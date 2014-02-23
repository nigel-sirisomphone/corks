'use strict';

class corks.Views.PinView extends Backbone.View
  tagName: 'article'

  className: 'pins__item'

  templates: {
    image : JST['app/scripts/templates/ImagePin.ejs'],
    text  : JST['app/scripts/templates/TextPin.ejs'],
    video : JST['app/scripts/templates/VideoPin.ejs'],
  }

  events: {
    'click'               : 'edit',
    'click .js_save-pin'  : 'registerChanges',
    'click .js_delete-pin': 'delete'
  }

  initialize: ->
    this.listenTo(this.model, 'change', this.render)

  render: ->
    type = this.model.get('type')
    _self = this

    this.$el
      .html(this.templates[type](this.model.toJSON()))
      .attr('data-type', type)

    $image = this.$el.find('img')
    $image.load ->
      _self.$el.css('width', $image.width())

    this

  edit: (e) ->
    _self = this;
    e.stopPropagation()

    $('.editing').removeClass('editing')
    this.$el.addClass('editing')

    $('body, html').on('click.closePinEdit', ->
      _self.$el.removeClass('editing')
      $(this).off('click.closePinEdit')
    )

  registerChanges: (e) ->
    e.stopPropagation()

    _self = this
 
    values = {
      title: $(this.$el.find('.js_pin-title')).val(),
      src  : $(this.$el.find('.js_pin-src')).val() || $(this.$el.find('img')).attr('src'),
      type : $(this.$el.find('select option:selected')).attr('value')
    }

    this.$el.removeClass('editing')

    _.each(values, (value, key) ->
      _self.model.set(key, value) if value and not(_self.model.get(key) is value)
    )

    this.model.save()

  delete: ->
    this.model.destroy()
    this.remove()
    return
