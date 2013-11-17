@BMRDemo.module "UsersApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.User extends App.Views.ItemView
    template: 'users/show/templates/user'