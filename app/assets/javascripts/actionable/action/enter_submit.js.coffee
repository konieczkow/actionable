class @EnterSubmit
  constructor: (selector) ->
    $('body').on 'keydown', "#{selector} input", this.on_keydown

  on_keydown: (event) ->
    if event.keyCode == 13
      $(this).parents('form').submit()
      event.preventDefault()