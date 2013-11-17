@BMRDemo.module "UsersApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  Show.Controller =

    showUser: (id) ->
      App.request "user:entities", (users) ->

        user = users.get(id)
        userView = new Show.User 
          model: user
        App.mainRegion.show userView

