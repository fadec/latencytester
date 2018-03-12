# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.room = App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    $('#messages').prepend(display_time_since(data['time']))

$(document).on('turbolinks:load',() ->
  time = location.pathname.substr(1)
  $('#messages').prepend(display_time_since(time)))

window.do_ajax = () ->
  $.ajax(url: '/' + Date.now() + '.json').done (data) ->
    $('#messages').prepend(display_time_since(data.time))

display_time_since = (time) ->
  '<p>' + (Date.now() - time) + ' ms</p>'

window.display_time_since = display_time_since