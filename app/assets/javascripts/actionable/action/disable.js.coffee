class window.Disable

  constructor: (selector) ->
    $(document).on 'click', this.document_on_click

  document_on_click: (event) ->
    if $(event.target).hasClass("disabled")
      event.stopPropagation()
      event.preventDefault()
