class @Link
	constructor: (selector) ->
		$('body').on 'click', selector, @on_click
		 
	on_click: (event) =>
    target = $(event.currentTarget)

    if (target.data('type') == 'popup')
      @open_popup(target) 
    else
      url = target.data("link")
      window.location = target.data("link")
    event.stopPropagation()		

	open_popup: (target) =>
    url = target.data("link")    
    defaultOptions = {
      title: '',
      width: 600,
      height: 800,
      scrollbars: 'auto'
    }
    options = new Options(defaultOptions)
    options.addAllFromElementData(target, 'title')
    window.open(url, "", options.to_params())		
		
    

