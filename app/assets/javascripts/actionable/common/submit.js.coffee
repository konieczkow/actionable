class Submit
	constructor: (selector) -> 
		$(selector).on 'click', this.on_click

	on_click: (event) ->
    if !$(this).is(".disabled")
			$(this).parents('form').submit() 
			event.stopPropagation()

