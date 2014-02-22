'use strict';

class corks.Views.PincollectionView extends Backbone.View
  render: ->
    html = this.template(this.model.toJSON())
    $('.pins').html(html)

  addItem: ->
    
  template: JST['app/scripts/templates/PinCollection.ejs']
