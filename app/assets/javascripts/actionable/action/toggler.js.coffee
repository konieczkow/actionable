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
    if klass? then klass else undefined

  get_mode: (delegateTarget) ->
    mode = delegateTarget.data('mode')
    if mode? then mode else "toggle"

  get_effect: (delegateTarget) ->
    delegateTarget.data('effect')
    
  get_destination: (delegateTarget) ->
    target = delegateTarget.data('target')
    if target? then $(target) else @elements 
    

  do_toggle_visibility: (toggle_target, effect) ->
    if (effect == "slide")
      toggle_target.slideToggle()
    else
      toggle_target.toggle()

  toggle_visibility: (toggle_target, mode, effect) ->
    switch mode
      when "toggle" then @do_toggle_visibility(toggle_target, effect)
      when "on" then toggle_target.show()
      when "off" then toggle_target.hide()
      
      
  toggle: (event_target, toggle_target) ->
    toggle_class() if event_target.data('class')?
	  
  toggle_class: (toggle_target, mode, klass) ->
    switch mode
      when "toggle" then toggle_target.toggleClass(klass)
      when "on" then toggle_target.addClass(klass)
      when "off" then toggle_target.removeClass(klass)   