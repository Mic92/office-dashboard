class Dashing.Firealarms extends Dashing.Widget
  ready: ->
    @update_timer()
    setInterval(@update_timer, 1000)

  update_timer: ->
     # Gross hack, better not change it.
     date = $("#date-value").text()
     $(".firealarms").find(".value").text($.format.prettyDate(date))
