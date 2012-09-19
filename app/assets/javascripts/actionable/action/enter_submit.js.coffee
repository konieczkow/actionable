class @EnterSubmit
  constructor: (selector) ->
    $('body').on 'keydown', "#{selector} input", @on_keydown

  on_keydown: (event) ->
    if event.keyCode == 13
      $(@).parents('form').submit()
      event.preventDefault()