class Actionable
  constructor: () ->
    new Link(".js_link")
    new Submit(".js_form_submit")
    new Disable()
    new Pushable(".pushable")    
    new Switcher('.activable')    
    new Toggler(".toggler")
    
    new Link("[data-action~='link']")
    new Submit("[data-action~='submit']")
    new Pushable("[data-action~='pushable']")    
    new Switcher("[data-action~='activate']")    
    new Toggler("[data-action~='toggle']")
    
$ ->
  new Actionable()