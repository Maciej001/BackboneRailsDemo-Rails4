@BMRDemo.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    listHeader: ->
      HeaderApp.List.Controller.listHeader()

  # set mod to not start with parent then respond to start event from app initializer   
  HeaderApp.on "start", ->
    API.listHeader()

  # Other initializing patterns
  # module self-initiation
  # App.addInitializer ->
  #   API.showFooter()

  # Respond to request from app.js initializer
  # App.reqres.setHandler "foo", ->
  #   API.showFooter()

