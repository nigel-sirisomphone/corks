'use strict';

class corks.Views.PincollectionView extends Backbone.View
  el: '.pins'

  initialize: ->
    this.render()

    this.listenTo(this.collection, 'add', this.addPin)
    this.listenTo(this.collection, 'reset', this.addAllPins)

    this.collection.fetch()
    this.watchPins()

  render: ->
    this.$el.html(this.template())    
    this.initFreetile()
    this

  events: {
    'click .js_go-to-top'        : ->
      $('html, body').animate({
        scrollTop: 0
      }, 200)
    'click a.js_add-pin'         : 'savePin'
    'click .pins__item--new-pin' : 'createPin'
  }

  watchPins: ->
    _self = this;

    $('.pins__item').on('click', ->
      $pin  = $(this)

      $pin.addClass('editing')
      _self.initFreetile()

      $('body, html').on('click.closePinEdit', ->
        $pin.removeClass('editing')
        $(this).off('click.closePinEdit')
        _self.initFreetile()
      )
    )

  createPin: (e) ->
    e.stopPropagation()

    $pin  = this.$el.find('.pins__item--new-pin')
    

  savePin: (e) ->
    e.stopPropagation()

    _self = this

    this.$el.removeClass('editing')
 
    this.collection.create(new corks.Models.PinModel({
      title: $(this.$el.find('.js_pin-title')).val(),
      src  : $(this.$el.find('.js_pin-src')).val() || $(this.$el.find('img')).attr('src'),
      type : $(this.$el.find('select option:selected')).attr('value')
    }))

    this.$el.find('input').val('')

  addPin: (pin) ->
    view = new corks.Views.PinView({model: pin})

    this.$el.append(view.render().el)

    this.initFreetile()
    

  addAllPins: ->
    this.collection.each(this.addPin, this)

  initFreetile: ->
    this.$el.freetile({
      selector: '.pins__item',
      animate: true
    })

  template: JST['app/scripts/templates/PinCollection.ejs']
