class @Toggler

  constructor: (selector) ->
    @elements = $(selector)
    @elements.on 'click', @on_event

  on_event: (event) =>
    delegateTarget = $(event.delegateTarget)
    destination = @get_destination(delegateTarget)
    effect = @get_effect(delegateTarget)
    mode = @get_mode(delegateTarget)
    klass = @get_class(delegateTarget)
    if (klass)
      @toggle_class(destination, mode, klass)
    else
      @toggle_visibility(destination, mode, effect)

  get_class: (delegateTarget) ->
    klass = delegateTarget.data('class')
    return klass if klass?
    undefined

  get_mode: (delegateTarget) ->
    mode = delegateTarget.data('mode')
    return mode if mode?
    "toggle"

  get_effect: (delegateTarget) ->
    delegateTarget.data('effect')
    
  get_destination: (delegateTarget) ->
    target = delegateTarget.data('target')
    return $(target) if target?
    @elements

  do_toggle_visibility: (toggle_target, effect) ->
    if (effect == "slide")
      toggle_target.slideToggle()
    else
      toggle_target.toggle()

  toggle_visibility: (toggle_target, mode, effect) ->
    if (mode == "toggle")
      @do_toggle_visibility(toggle_target, effect)
    else if (mode == "on")
      toggle_target.show()
    else if (mode == "off")    
      toggle_target.hide()
      
  toggle: (event_target, toggle_target) ->
    if (event_target.data('class')?)
      toggle_class()
	  
  toggle_class: (toggle_target, mode, klass) ->
    if (mode == "toggle")
      toggle_target.toggleClass(klass)
    else if (mode == "on")
      toggle_target.addClass(klass)
    else if (mode == "off")    
      toggle_target.removeClass(klass)	

