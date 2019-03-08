class Dashing.Drunks extends Dashing.Widget
  onData: (data) ->
    if data.time
      $(@node).find("#drinks-date").text($.format.date(data.time, "HH:mm dd.MM.yyyy"))
      $(@node).find(".subtext").text("(#{$.format.prettyDate(data.time)})")
    if data.birthday_time
      $(@node).find("#next-birthday").text($.format.date(data.birthday_time, "dd.MM.yyyy"))
