# Actionable

Javascriptless declarative lib for common web page interactions using css classes data tags.


## Installation

Add this line to your application's Gemfile:

    gem 'actionable', :git => "git://github.com/aenima/actionable.git"

And then execute:

    $ bundle install

And then add this line to application.js or somewhere in the asset pipeline:

    //= require actionable


## Usage

Add classes to html elements to define behaviors. 

### Form submit:

```ruby
<div class="js_form_submit" /> 
```

Click on div will submit the form (first ancestor element of type form in DOM tree)

### Link: 

```ruby
<div class="js_link" data-link="http://google.com" />
```

Click on div will redirect browser to url taken from data-link.

## TODO
- pushable
- disabler
- class toggler
- visiblity toggler
- onable/offable class/visiblity
- removable/closable
- focusable
- docs: custom example: button