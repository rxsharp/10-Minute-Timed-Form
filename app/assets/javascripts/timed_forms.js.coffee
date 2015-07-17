$(document).ready ->
  $('form.new_timed_form').submit ->
    $('#timed_form_begin').val $('#ten-countdown').text()
    true