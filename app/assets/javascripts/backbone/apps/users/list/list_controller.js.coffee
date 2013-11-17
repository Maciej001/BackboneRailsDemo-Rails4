@BMRDemo.module "UsersApp.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    listUsers: ->
      # force rendering to wait for success response from fetch 
      # alternative is to respond to collectionEvent "sync" (not reset) in itemview
      App.request "user:entities", (users) =>

        @layout = @getLayoutView()

        @layout.on "show", =>
          @showPanel users
          @showUsers users

        App.mainRegion.show @layout


    showPanel: (users) ->
      panelView = @getPanelView users
      @layout.panelRegion.show panelView
    
    showUsers: (users) ->
      usersView = @getUsersView users
      @layout.usersRegion.show usersView

    getPanelView: (users) ->
      new List.Panel
        collection: users

    getUsersView: (users) ->
      new List.Users
        collection: users

    getLayoutView: ->
      new List.Layout
