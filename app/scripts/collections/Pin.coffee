'use strict';

class corks.Collections.PinCollection extends Backbone.Collection
  localStorage: new Backbone.LocalStorage('corkage')

  initialize: ->
    this.model = corks.Models.PinModel

