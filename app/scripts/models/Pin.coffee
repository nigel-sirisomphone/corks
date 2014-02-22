'use strict';

class corks.Models.PinModel extends Backbone.Model
  defaults: {
    title    : 'Name your pin.',
    type     : 'blank',
    src      : '/images/new-pin.gif' #overwrite with placeholder
    date     : -> new Date()
  }
