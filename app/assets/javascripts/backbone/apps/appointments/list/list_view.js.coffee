@BMRDemo.module "ApptsApp.List", (List, App, Backbone, Marionette, $, _) ->

  class List.Appts extends App.Views.ItemView
    template: "appointments/list/templates/list_appts"