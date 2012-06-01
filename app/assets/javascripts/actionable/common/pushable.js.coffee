class window.Pushable
  constructor: (selector, @klass = "pushed") ->
    console.log(this)
    $(selector).on 'mousedown', this.on_mousedown
    $(selector).on 'mouseleave', this.on_removeclass
    $(selector).on 'mouseup', this.on_removeclass
		 
  on_mousedown: (event) =>
    $(event.target).addClass(@klass)
    
  on_removeclass: () =>
    $(event.target).removeClass(@klass)