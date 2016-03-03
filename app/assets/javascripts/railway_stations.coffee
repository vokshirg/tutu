ready = ->
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

$(document).ready(ready)
$(document).on('page:load', ready)
