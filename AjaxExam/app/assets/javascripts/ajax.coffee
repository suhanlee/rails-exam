# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
init = ->
  $('#ajax_form').on 'ajax:success', (e, data) ->
    $('#result').empty()
    $.each data, ->
      $('#result').append(
        $('<a></a>').attr('href', @url)
      )

$(document).ready(init)
$(document).on('page:change', init)

$(document).ajaxStart ->
  $('#progress').html 'Executing...'

$(document).ajaxComplete ->
  $('#progress').html ''