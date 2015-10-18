# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
  states = $('#courier_state_id').html()
  console.log(states)
  $('#courier_country_id').change ->
    country = $('#courier_country_id :selected').text()
    options = $(states).filter("optgroup[label=#{country}]").html()
    console.log(options)
    if options
      $('#courier_state_id').html(options)
    else
      $('#courier_state_id').empty()