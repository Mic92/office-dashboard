class Dashing.Firealarms extends Dashing.Widget
  ready: ->
    @update_timer()
    setInterval(@update_timer, 1000)

  update_timer: ->
     $firealarms = $(".firealarms")

     # Gross hack, better not change it.
     alarm_date = $("#alarm-value").text()
     $firealarms.find(".alarm").text($.format.prettyDate(alarm_date))

     test_alarm_date = $("#test-alarm-value").text()
     $firealarms.find(".test-alarm").text($.format.prettyDate(test_alarm_date))
