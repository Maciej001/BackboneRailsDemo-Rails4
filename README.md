# BackboneRails.com Demo App Updated for Rails 4


Basic updating of BackboneRails.com Episode 6 Demo App to Rails 4.

## Key Differences

* Obviously, Rails 4.0.1
* Update to Backbone 1.1.0, Marionette 1.2.2 - both resulting in minor changes in Wreqr calls
* Using postgresql as DB for a closer to production feel
* Use of native JBuilder instead of RABL gem
* Update of Twitter Bootstrap and removal of associated cruft from HTML - moving it into SASS @extend statements
* Minor accommodations for Gon gem implementation to account for slight incompatibility with Rails 4 - strange partial patterns addressed with minor changes to original Demo code.
* Completion of minor functionality


## Use
The usual using Thin.

    bundle install

Remove my database.yml (configured for my systems allow me to check it in) and rename database.example.yml, add password and user name then:

    rake db:setup

to load small user database seed.  Then run it.

    thin start -D -p 8000

