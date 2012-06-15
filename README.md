# Actionable

Javascriptless declarative lib for defining common web page interactions. Actionable is unobtrusive jquery-based library.
It allows you to keep your javascript binding file short and avoid long list of couple-line bindings.


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

Click on div will submit the form (More precisely first ancestor element of type form in DOM tree will be submited)

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

### Switcher: 

    <div class="activable" />
    <div class="activable" />
    <div class="activable" />        

Click on div will add a class 'active' to it, so in inspector it will look like this:

    <div class="activable" />
    <div class="activable active" />
    <div class="activable" />        
    
Class will be removed as soon as you click on any of the other elements.

This behavior can be customized (see Customization), by default it is initialized as follows:

    new Switcher('.activable', "active", 'body')
  
First argument is selector of element to react on click. Second is the name of the class to be added/removed. Third is common ancestor in DOM tree of all clickable elements. This is useful if there is more then one set of elements to use with Switcher.

### Toggler

Toggler switches visibility or class of an element. Here comes the visibility example:

    <div class="toggler" data-target= "#toggled_div" />
    
Click on div with class 'toggler' will toggle '#toggled_div'. If we're talking about toggling visibility, you can add a sliding effect:

    <div class="toggler" data-target= "#toggled_div" data-effect="slide"/>

You can also force toggler to only show '#toggled_div' (not toggle):

    <div class="toggler" data-target= "#toggled_div" data-effect="slide" data-mode="on"/>

Finally you can toggle class. If you don't provide data-target, operation will be performed on clicked element.

    <div class="toggler" data-class= "active" />
    
In the example above div of class 'toggler' will toggle it's active state on each click.

### Focusable: 

Here is example how to intialize focusable:

    	new Focusable(".wrapper", ".input")
    	
Click anywhere on element with class 'wrapper' will bring focus to first element inside 'wrapper' that has class '.input'

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


## Backlog
- introduce namespace behavior
 - copy to clipboard (?)
 - add default to toggler
 - add data-event 
- introduce namespace widget (fully customizable)
 - progress bar (?)
 - drop-down (allow including images in items)
 - tooltip
 - scrollbar
 - radio/checkbox
