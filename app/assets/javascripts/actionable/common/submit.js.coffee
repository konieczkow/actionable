class Submit
	constructor: (selector) -> 
		$(selector).on 'click', this.on_click

	on_click: (event) ->
		$(this).parents('form').submit() 
		event.stopPropagation()
		event.preventDefault()
