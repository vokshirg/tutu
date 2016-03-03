# $(window).onload ->
  # $('.places').hide()

jQuery(document).ready ->
  $('.places').hide()
  $('.wagon_type_select').change ->
    type = @.value
    console.log type
    top_places = $('.top_places')
    bottom_places = $('.bottom_places')
    side_top_places = $('.side_top_places')
    side_bottom_places = $('.side_bottom_places')
    seat_places = $('.seat_places')


    switch type
      when 'CoupeWagon'
        top_places.show()
        bottom_places.show()
        side_top_places.hide()
        side_bottom_places.hide()
        seat_places.hide()
    #
      when 'CBWagon'
        top_places.hide()
        bottom_places.show()
        side_top_places.hide()
        side_bottom_places.show()
        seat_places.hide()
    #
      when 'EconomyWagon'
        top_places.show()
        bottom_places.show()
        side_top_places.show()
        side_bottom_places.show()
        seat_places.hide()
    #
      when 'SeatWagon'
        top_places.hide()
        bottom_places.hide()
        side_top_places.hide()
        side_bottom_places.hide()
        seat_places.show()
