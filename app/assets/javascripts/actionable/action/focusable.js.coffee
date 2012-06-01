class window.Focusable
  constructor: (clickable_selector, @focusable_selector) ->
    $(clickable_selector).on 'click', this.clickable_on_click
    
  clickable_on_click: (event) =>
    target = $(event.delegateTarget)
    target.find(@focusable_selector).focus()
