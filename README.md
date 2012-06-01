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

    <div class="js_form_submit" /> 

Click on div will submit the form (first ancestor element of type form in DOM tree)

### Link: 

    <div class="js_link" data-link="http://google.com" />

### Disable: 

    <div class="disable js_link" data-link="http://google.com" />

Click on div will od nothing unless disbale class is removed.

## Custom selectors

To use custom selectors create Actionable classes with custom selectors passed to contructor.  
Add following lines to javascript initalisation:

    new Link(".action-link")
    new Submit("data[acton='submit'")		
    new Disable("#fake_button")		
    
Now you can use them as follows:

    <div data-action="submit" /> 
    <div class="action-link" data-link="http://google.com" />
    <div id="fake_button" class="js_link " data-link="http://google.com" />


## TODO
- pushable
- class toggler
- attribute/visibility toggler
- onable/offable class/visiblity
- removable/closable
- focusable