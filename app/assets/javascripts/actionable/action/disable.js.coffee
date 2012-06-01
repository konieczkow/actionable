class window.Disable

	constructor: (selector) ->
    document.addEventListener 'click', this.document_on_click, true		 
	
	document_on_click: (event) ->
    if $(event.target).hasClass("disabled")
	    event.stopPropagation()
	    event.preventDefault()