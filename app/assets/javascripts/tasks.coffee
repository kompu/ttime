# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# y la rutina para actualizar el reloj

actualizarReloj = ->
  
  fecha = new Date
  # This is the version of the date UTC
  utc = fecha.getTime() + fecha.getTimezoneOffset() * 60000
  # Retrieves the items whose class is "clock" and for each
  $('.reloj').each -> 
    $me = $(this)                   # This is the this clock
    offset = $me.data('offset')     # This is the offset in minutes to show time
    e =  utc - (new Date(offset)).getTime()  # Calculates the new time according to the specified offset
    datetext = (new Date(e)).toTimeString().split(' ')[0]
    $me.text datetext.split(' ')[0]; # Put the time on the clock
    return
  return

$ ->
  setInterval actualizarReloj, 1000
  return