@BMRDemo.module "ApptsApp.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller =
    listAppts: ->
      apptsView = @getApptsView()
      App.mainRegion.show apptsView

    getApptsView: ->
      new List.Appts