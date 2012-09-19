class @Pushable
  constructor: (selector, @klass = "pushed") ->
    $(selector).on 'mousedown', @on_mousedown
    $(selector).on 'mouseleave', @on_removeclass
    $(selector).on 'mouseup', @on_removeclass
		 
  on_mousedown: (event) =>
    $(event.target).addClass(@klass)
    
  on_removeclass: (event) =>
    $(event.target).removeClass(@klass)