
exports.ListenerView = class ListenerView extends Backbone.View

  @className: null
  @modelProperty: null

  #model should be inherited from backbone.view

  initialize: (options) ->
    {@model, @modelProperty, @className} = options
    @render()

    @listenTo @model, "change:#{@modelProperty}", @render

  render: ->
    @$el.empty().append template(@className, @model.get(@modelProperty))

template = (className, text) ->
  """
  <span class="#{className}">#{text}</span>
  """
