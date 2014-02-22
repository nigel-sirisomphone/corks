'use strict';

class corks.Routers.PinRouter extends Backbone.Router
  routes  = {
    ''       : 'index',
    'pin/:id': 'show'
  }

  initialize: ->
    this.pins     = new corks.Collections.PinCollection(window.seed)
    this.pinsView = new corks.Views.PincollectionView({collection: this.pins})

    this.pinsView.render()

    console.log(this.pinsView)

  index: ->
    $('.pins').html(this.todosView.el)

  show: ->
    # something

  start: ->
    Backbone.history.start({pushSate: true})

#pins     = new this.Collections.PinCollection(window.seed)
#pinsView = new this.Views.PincollectionView({collection: pins})