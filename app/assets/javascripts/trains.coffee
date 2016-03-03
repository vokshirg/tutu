ready = ->
  $('.train_edit_button').click (e)->
    e.preventDefault()
    train_id = $(@).data 'trainId'
    parent_tr = $('.train_tr_'+train_id)
    tr = $('.train_form_tr_'+train_id)

    parent_tr.toggle()
    tr.toggle()

    $('tr:visible .train_edit_cancel').not(tr.find('.train_edit_cancel')).click()

  $('.train_edit_cancel').click (e)->
    e.preventDefault()
    train_id = $(@).data 'trainId'

    tr = $('.train_tr_'+train_id)
    parent_tr = $('.train_form_tr_'+train_id)

    parent_tr.toggle()
    tr.toggle()

    
$(document).ready(ready)
$(document).on('page:load', ready)
