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

Click on div will do nothing unless disable class is removed.

### Pushable: 

    <div class="pushable" />

Click on div will add a class 'pushed' to it, so in inspector it will look like this:

    <div class="pushable pushed" />
    
Class will be removed as soon as mouse button is up or mouse cursor leaves div area. 

## Customization

You can use custom selectors to get various effects. To do so simply create Actionable classes with custom selectors passed to constructor. See examples below:

### Different classes name:

Add this line to javascript initialization:

    new Link(".action-link");

Now use "action-link" class to mark links in html code:
    
    <div class="action-link" data-link="http://google.com" />

### Use data tags instead of classes:
        
Add selector with data tag in javascript initialization:

    new Submit("data[acton='submit']");	

And use following code in html:

    <div data-action="submit" /> 

### Join multiple behaviors into new ones

Use one css class and join multiple behaviors into one:

    new Pushable(".submit_button");	
    new Submit(".submit_button");		
                
Now you can create pushable button that will submit a form with following html code:

    <div class="submit_button" />


## NEXT TODO
- class toggler (eg activeable)
- attribute (eg visibility) toggler
- class and attributes (eg visibility) on/offer 
- focuser

## Backlog
- fully customizable progress bar (?)
- fully customizable drop-down (allow including images in items)