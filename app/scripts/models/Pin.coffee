'use strict';

class corks.Models.PinModel extends Backbone.Model
  defaults: {
    title    : 'Name your pin',
    type     : 'image',
    src      : '' #overwrite with placeholder
    date     : -> new Date()
  }