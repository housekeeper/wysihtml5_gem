# wysihtml5_gem
=============

A quick and simple gem to wrap and install wysihtml5 into a rails asset pipeline.
This gem will not create the tool bar, but this is very easily done and gives you all the flexibility 
to add it yourself styling it anyway you like.

This gem is intended to be as clean as possible and versions of this gem will stay in line with versions of the wysihtml5

## Installation for Rails 3.1 and above

Add the gem to your Gemfile

``` ruby
gem 'wysihtml5_gem', '0.3.0'
```

save and run bundle install.

## Configuration into your rails application

In application.js add the following (I personally use coffescript)

``` javascript
//= require wysihtml5_gem/wysihtml5-0.3.0
//= require wysihtml5_gem/advanced
```

In application.css add the following (I use sass notation here)

``` sass
@import "wysihtml5_gem/wysihtml5"
```

Then just simple add the wysihtml5 class name to a text area and initialize wysihtml5 (I am using HAML notation here with a rails for helper)

```haml
= text_area_tag :testing_wysihtml5, "", :class => "wysihtml5"
```

or in pure html

```html
<textarea id="testing_wysihtml5" class="wysihtml5"></textarea>
```

the simple initialise the wysihtml5

``` javascript
  var editor = new wysihtml5.Editor("testing_wysihtml5", {    // id of textarea element
    //toolbar:      "wysihtml5-toolbar",                      // id of toolbar element, which you need to create
    parserRules:  wysihtml5ParserRules                        // defined in parser rules set 
  });
```

Copyright (c) 2012 HouseKeeper. See LICENSE.txt for
further details.