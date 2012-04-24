
Split\_Lines
===========

A Ruby gem providing a single function, `Split_Lines`. It:

* extracts each line from text.
* strips each line.
* rejects empty lines.
* returns the lines in an Array.

Installation
----

    gem install Split_Lines

Usage
----

    require "Split_Lines"

    Split_Lines %@
      cd /my_apps

      pwd
    @
    # --> [ 'cd /my_apps', 'pwd' ]

Run Tests
---------

    git clone git@github.com:da99/Split_Lines.git
    cd Split_Lines
    bundle update
    bundle exec bacon spec/main.rb

...
---

The End.
    
