class Actionable
  constructor: () ->
    new Link(".js_link")
    new Submit(".js_form_submit")
    new Disable(".disabled")
    new Pushable(".pushable")    
    
$ ->
  new Actionable()