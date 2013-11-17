@BMRDemo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    showFooter: ->
      FooterApp.Show.Controller.showFooter()

  # set mod to not start with parent then respond to start event from app initializer   
  FooterApp.on "start", ->
    API.showFooter()

  # Other initializing patterns
  # module self-initiation
  # App.addInitializer ->
  #   API.showFooter()

  # Respond to request from app.js initializer
  # App.reqres.setHandler "foo", ->
  #   API.showFooter()

