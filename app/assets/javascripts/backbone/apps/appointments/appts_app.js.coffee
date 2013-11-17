@BMRDemo.module "ApptsApp", (ApptsApp, App, Backbone, Marionette, $, _) ->
  class ApptsApp.Router extends Marionette.AppRouter
    appRoutes: 
      "appointments": "listAppts"

    API = 
      listAppts: ->
        ApptsApp.List.Controller.listAppts()

    App.addInitializer ->
      new ApptsApp.Router
        controller: API