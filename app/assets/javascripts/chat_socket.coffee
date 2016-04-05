scheme   = if location.protocol == 'http:' then "ws://" else "wss://"
uri      = scheme + window.document.location.host + "/"
window.ws = new WebSocket(uri)

window.ws.onmessage = (message) ->
  console.log("received: ", message)
  data = JSON.parse(message.data)
  switch data.event
    # append the new message html content
    when 'message_create' then $(data.content).hide().appendTo('.messages').slideDown()
    # remove the deleted message
    when 'message_delete' then $('.messages').find(data.content).slideUp(300, -> $(this).remove())
    else console.log("unknown event", data.event)

# see: https://github.com/rails/jquery-ujs/wiki/ajax
setupForm = ->
  $("form#new_message").on('ajax:success', (event, data, success, xhr) ->
    $('input#message_content').val('')
  ).on('ajax:error', (event, xhr, status, error) ->
    # this is useful for network issues or server errors
    # e.g. try using message.save!
    alert("Couldn't send the message. Try again later.")
  )

  $('.message_delete').on('ajax:before', ->
    $(this).parent().slideUp('slow')
  ).on('ajax:error', (event, xhr, status, error) ->
    console.log("Error: ", error)
    $(this).parent().effect('shake')
  )

$(document).on "page:change", ->
  setupForm()
