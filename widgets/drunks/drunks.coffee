class Dashing.Drunks extends Dashing.Widget
  onData: (data) ->
    if data.time
      $(@node).find("h3").text($.format.date(data.time, "HH:mm dd.MM.yyyy"))
      $(@node).find(".subtext").text("(#{$.format.prettyDate(data.time)})")
      
