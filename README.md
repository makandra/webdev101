Web development 101
===================

To start the slides, open `index.html`

Slides are also deployed at <http://webdev101.makandra.de>

Code examples are in `examples`.

One-line web server to serve the presentation and all examples:

```
ruby -run -ehttpd . -p8000
```


Making changes to the repo
--------------------------

Install Ruby and Bundler.

To install gem dependencies, run `bundle install` in the project root.

Edit slides in `source/index.haml`.

You can start guard using `bundle exec guard`.
It will compile `source/index.haml` to `index.html` whenever you change it the Haml code. You may also press <kbd>Return</kbd> in the guard terminal to compile now.
