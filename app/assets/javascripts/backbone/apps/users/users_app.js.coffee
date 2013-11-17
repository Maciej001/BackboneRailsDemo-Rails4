@BMRDemo.module "UsersApp", (UsersApp, App, Backbone, Marionette, $, _) ->

  class UsersApp.Router extends Marionette.AppRouter
    appRoutes:
      "users": "listUsers"
      "users/:id": "showUser"

  API =
    listUsers: ->
      UsersApp.List.Controller.listUsers()

    showUser: (id) ->
      UsersApp.Show.Controller.showUser(id)

  UsersApp.on "user:show", (id) ->
    UsersApp.navigate "users/#{id}"
    API.showUser id

  App.addInitializer ->
    new UsersApp.Router
      controller: API