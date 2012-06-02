class window.Toggler

  constructor: (selector) ->
    @elements = $(selector)
    @elements.on 'click', this.on_event

  on_event: (event) =>
    delegateTarget = $(event.delegateTarget)
    destination = this.get_destination(delegateTarget)
    effect = this.get_effect(delegateTarget)
    mode = this.get_mode(delegateTarget)
    klass = this.get_class(delegateTarget)
    if (klass)
      this.toggle_class(destination, mode, klass)
    else
      this.toggle_visibility(destination, mode, effect)

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
      this.do_toggle_visibility(toggle_target, effect)
    else if (mode == "on")
      toggle_target.show()
    else if (mode == "off")    
      toggle_target.hide()
      
  toggle: (event_target, toggle_target) ->
    if (event_target.data('class')?)
      toggle_class()
	  
  toggle_class: (toggle_target, mode, klass) ->
    console.log(mode)
    if (mode == "toggle")
      toggle_target.toggleClass(klass)
    else if (mode == "on")
      toggle_target.addClass(klass)
    else if (mode == "off")    
      toggle_target.removeClass(klass)	

