SpreeMinicart
=============

Minicart feature forked from Stéphane Bounmy.

Minicart allows customer to preview their cart before they start the checkout process. They can also remove items from the cart.

Installation
------------

To install Spree Minicart for spree, just add the following to your Gemfile:

```ruby
gem 'spree_minicart', :git => 'https://github.com/cahein/spree_minicart.git', :branch => "master"
```

Now, bundle up with:

```ruby
bundle install
```

And finally run the install generator:

```ruby
rails g spree_minicart:install
```
The install generator will add 'spree/frontend/spree_minicart' javascript and stylesheet to
'vendor/assets/javascripts/spree/frontend/all.js' and 'vendor/assets/stylesheets/spree/frontend/all.css'. Please remove these entries manually to uninstall the extension, 

Customization
-------------

The minicart markup should let you customize the way you want your minicart by using Deface or overriding 'views/spree/shared/_minicart.html.erb' and 'views/spree/shared/_minicart_line_items.html.erb'.

If you need to change the js response when you add/update the minicart, check out 'views/spree/orders/populate.js.erb' and 'views/spree/orders/update.js.erb'.


Testing
-------

To be able run the Selenium tests, you will need to have the related drivers installed. For Mozilla, the 'geckodriver' can be downloaded here: https://github.com/mozilla/geckodriver/releases
Be sure to bundle your dependencies and then create a dummy test app for the specs to run against. 

```bash
bundle install
bundle exec rake test_app
bundle exec rspec spec
```

Compatibility
------------

Tested under Spree 2.4.x, 3.0.x, 3.6.x

Contribute
----------

Pull requests for features and bug fix with tests are welcome.
