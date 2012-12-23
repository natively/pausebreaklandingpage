$('#submit').on('click', (e) ->
  e.preventDefault()
  $.post('/potential_clients'
    , {
      'potential_client[name]': $('#name').val(),
      'potential_client[email]': $('#email').val(),
      'potential_client[phone]': $('#phone').val(),
      'potential_client[project_description]': $('#description').val()
    }
    , (data) ->
      document.getElementById('contact-form').reset()
      alert('Thank you! We will be in touch soon. :-) ')
  )
  false
)
