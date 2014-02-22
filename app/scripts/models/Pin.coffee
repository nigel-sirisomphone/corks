'use strict';

class corks.Models.PinModel extends Backbone.Model
  defaults = {
    title: 'Name your pin',
    type : 'image',
    isActive: true,
    src     : '' #overwrite with placeholder
  }