class @Switcher
  constructor: (@element_selector, @active_class = "active", @ancestor_selector = 'body') ->
    $(@ancestor_selector).on 'click', @element_selector, @activable_on_click

  get_ancestor: (event) ->
    target = $(event.target)
    if (target.data('ancestor'))
      return target.data('ancestor')
    else
      $(event.target).parents(@ancestor_selector)

  activable_on_click: (event) =>
    all = @get_ancestor(event).find(@element_selector)
    all.removeClass(@active_class)
    $(event.target).addClass(@active_class)
