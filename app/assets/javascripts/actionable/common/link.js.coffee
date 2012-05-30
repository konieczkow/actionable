class Link
	constructor: (selector) ->
		$(selector).on 'click', this.on_click
		 
	on_click: (event) ->
		window.location = $(this).data("link")
		event.stopPropagation()
		
    

