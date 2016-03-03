ready = ->
  $('.route_edit_button').click (e)->
    e.preventDefault()
    route_id = $(@).data 'routeId'
    parent_tr = $('.route_tr_'+route_id)
    tr = $('.route_form_tr_'+route_id)

    parent_tr.toggle()
    tr.toggle()

    $('tr:visible .route_edit_cancel').not(tr.find('.route_edit_cancel')).click()

  $('.route_edit_cancel').click (e)->
    e.preventDefault()
    route_id = $(@).data 'routeId'

    tr = $('.route_tr_'+route_id)
    parent_tr = $('.route_form_tr_'+route_id)

    parent_tr.toggle()
    tr.toggle()


$(document).ready(ready)
$(document).on('page:load', ready)
