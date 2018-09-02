class Dashing.Code extends Dashing.Widget
  ready: ->
    hljs.initHighlightingOnLoad()

  onData: (data) ->
    if data.snippet
      code = hljs.highlightAuto(data.snippet)
      $("code").html(code.value)
