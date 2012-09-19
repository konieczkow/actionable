class @Disable

	constructor: (selector) ->
    if document.addEventListener
      document.addEventListener 'click', this.document_on_click, true		 
	
	document_on_click: (event) ->
    if $(event.target).hasClass("disabled")
	    event.stopPropagation()
	    event.preventDefault()