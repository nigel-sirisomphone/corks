'use strict';

class corks.Routers.PinRouter extends Backbone.Router
  routes  = {
    ''       : 'index',
    'pin/:id': 'show'
  }

  initialize: ->
    this.pins = new PinCollection()

  index: ->
    # something

  show: ->
    # something