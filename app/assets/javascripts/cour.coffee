# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  states = $('#cour_state').html()
  console.log(states)
  $('#cour_country').change ->
    country = $('#cour_country :selected').text()
    options = $(states).filter("optgroup[label=#{country}]").html()
    console.log(options)
    if options
      $('#cour_state').html(options)
    else
      $('#cour_state').empty()

