class window.actionable.core.Binder
  constructor: (target, action) ->
    if (target.data('event')?)
      target.on target.data('event'), action
    else
      target.on click, action
