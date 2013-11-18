@BMRDemo.module "Views", (Views, App, Backbone, Marionette, $, _) ->

  _.extend Marionette.View::,

    templateHelpers: ->
      currentUser:
        App.request("get:current:user").toJSON()

      linkTo: (name, url, options = {}) ->

        _.defaults options,
          external: false

        url = "#" + url unless options.external
        "<a href='#{url}'>#{@escape(name)}</a>"

      buttonTo: (name, url) ->

        url = "#" + url
        "<a href='#{url}' class='btn btn-default btn-sm'>#{@escape(name)}</a>"

      nextUserButton: (id) ->
        next = id + 1
        last = gon.users.length
        if id is last
          "<a href='#/users/1' class='btn btn-default btn-sm'>First User</a>"
        else
          "<a href='#/users/#{next}' class='btn btn-default btn-sm'>Next User</a>"
