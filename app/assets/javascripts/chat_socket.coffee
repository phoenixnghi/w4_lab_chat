scheme   = "ws://";
uri      = scheme + window.document.location.host + "/"
window.ws = new WebSocket(uri)

window.ws.onmessage = (message) ->
  $.ajax
    url: ('/messages')
    data: ''
    success: -> console.log("done")
    dataType: 'script'

setupEvents = ->
  $("form#new_message").on 'submit', (event) ->
    event.preventDefault()
    window.ws.send("he just submitted")

$(document).on "ready page:change"
  setupEvents()
  setupTracking()

