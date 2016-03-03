# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.edit_station').click (e)->
    e.preventDefault()
    station_id = $(@).data('stationId')
    form = $('#edit_railway_station_' + station_id)
    title = $('.railway_station_title_' + station_id)
    # console.log form
    $(@).toggleClass "btn-warning"
    $(@).toggleClass "btn-danger"
    form.toggle()
    title.toggle()

    if $(@).hasClass("btn-danger")
      $(@).html "Отмена"
      $('.edit_station.btn-danger').not(@).click()
    else
      $(@).html "Редактировать"
