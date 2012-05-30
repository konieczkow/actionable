class Submit
	constructor: (selector) -> 
		$(selector).on 'click', this.on_click

	on_click: (event) ->
    unless $(this).is(".disabled")
			$(this).parents('form').submit() 
			event.stopPropagation()

