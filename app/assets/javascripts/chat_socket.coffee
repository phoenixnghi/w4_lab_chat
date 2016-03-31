scheme   = "ws://";
uri      = scheme + window.document.location.host + "/"
window.ws = new WebSocket(uri)

window.ws.onmessage = (message) ->
  $.get '/messages', (data) ->
    $('.messages').html(data)
    $("input#message_content").val('').focus()

setupEvents = ->
  $("form#new_message").on 'submit', (event) ->
    console.log("submitting")
    window.ws.send("he just submitted")

$(document).on "page:change", ->
  setupEvents()

