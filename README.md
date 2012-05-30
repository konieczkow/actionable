# Actionable

Javascriptless declarative lib for common web page interactions using css classes data tags.


## Installation

Add following to your Gemfile:

```ruby
gem 'actionable', :git => "git@github.com:aenima/actionable.git"
```

And run `bundle install`. 


## Usage

Add classes to html elements to define behaviors. 

Form submit:

```ruby
<div class="js_form_submit" /> 
```

Click on div will submit the form (first ancestor elemrnt of type form in DOM tree)

Link: 

```ruby
<div class="js_link" data-link="http://google.com" />
```

Click on div will redirect browser to url taken from data-link.