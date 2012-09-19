class Submit
	constructor: (selector) -> 
		$('body').on 'click', selector, @on_click

	on_click: (event) ->
		$(this).parents('form').submit() 
		event.stopPropagation()
		event.preventDefault()


window.Submit = Submit