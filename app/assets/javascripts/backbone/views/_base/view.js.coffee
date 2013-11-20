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
        "<a href='#{url}'>#{@escape(name)}</a>"

      nextUserButton: (id) ->
        next = id + 1
        last = App.usersCount
        if id is last
          "<a href='#/users/1'>First User</a>"
        else
          "<a href='#/users/#{next}'>Next User</a>"

      prevUserButton: (id) ->
        prev = id - 1
        last = App.usersCount
        if id is 1
          "<a href='#/users/#{last}'>Last User</a>"
        else
          "<a href='#/users/#{prev}'>Previous User</a>"
