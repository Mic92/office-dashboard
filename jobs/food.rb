require 'net/imap'
require 'mail'
#require 'classifier'
#require 'mail_extract'
require 'pry'

def fetch_mails(imap, ids)
  imap.fetch(ids, "RFC822").map do |msg|
    Mail.read_from_string msg.attr["RFC822"]
  end
end

def fetch_all(imap, mailbox)
  imap.examine(mailbox)
  ids = []
  imap.search(["SINCE", "1-Jan-2017"]).each do |id|
    ids << id
  end
  fetch_mails(imap, ids)
end

def check_box(imap, mailbox)
  imap.examine(mailbox)
  time = (Time.new - 86400 * 2).strftime("%d-%b-%Y")
  ids = []
  imap.search(["SINCE", time]).each do |id|
    ids << id
  end
  fetch_mails(imap, ids)
end

def connect()
  imap = Net::IMAP.new('mail.thalheim.io')
  imap.starttls()
  passw = File.open("/tmp/secrets").read().strip()
  imap.authenticate('LOGIN', 'joerg@higgsboson.tk', passw)
  imap
end

def split_training_set(list)
  list = list.shuffle
  split = (list.size * 0.80).floor
  [
    list[0..split],
    list[(split + 1)..list.size]
  ]
end

def flatten_parts(mail)
  if mail.parts == []
    [mail]
  else
    mail.parts.map {|p| flatten_parts(p) }.flatten
  end
end

def message(mail)
  # find only plain-text parts
  if mail.multipart?
    parts = flatten_parts(mail)
    plain_parts = parts.select do |p|
      if p.content_type =~ /text\/plain/
        m = MailExtract.new(p.body.decoded)
        if m.body != ""
          binding.pry
        else
          false
        end
      else
        false
      end
    end
    html_parts = parts.select do |p|
      p.content_type =~ /text\/html/
    end
    message = if plain_parts == []
                plain_parts.map { |p| p.body.decoded }
              else
                html_parts.map { |p| p.body.decoded.gsub(/<\/?[^>]*>/, "")}
              end.join(" ")
  else
    message = mail.body.decoded
  end

  b = MailExtract.new(message).body
  if b == ""
    binding.pry
  end
  b
end


def train()
  imap = connect()
  b = Classifier::Bayes.new 'Food', 'No_food'
  food = fetch_all(imap, "zlist.food-good")
  training_food, validation_food = split_training_set(food)
  training_food.each do |f|
    b.train_food(message(f))
  end

  no_food = fetch_all(imap, "zlist.food-bad")
  training_no_food, validation_no_food = split_training_set(no_food)
  training_no_food.each do |f|
    b.train_no_food(message(f))
  end

  result_food = validation_food.map do |v|
    b.classify(message(v))
  end

  result_no_food = validation_no_food.map do |v|
    b.classify(message(v))
  end

  binding.pry
end

case ARGV[0]
when "train"
  train()
else
  #SCHEDULER.every '30s' do
  #  check_box(imap, "zlist.inf-general")
  #end
end
