{TabsView} = require './TabsView'
{TextView} = require './TextView'

exports.HelloWorldView = class HelloWorldView extends Backbone.View

  className: 'hello-world-view'

  tabsView: null

  events:
    'click .hello-world-title': '_titleClicked'

  initialize: ->
    @render()

  render: ->
    @$el.append template()

    $tabsElement = @$el.find('.my-tabs-component')

    tabsView = new TabsView(el: $tabsElement, tabs: [
      {
        name: 'itzik'
        viewConstructor: TextView
        viewOptions: {text: 'i am tab Itzik'}
      }
      {
        name: 'resa'
        viewConstructor: TextView
        viewOptions: {text: 'i am tab Theresa'}
      }
      ])


  _titleClicked: ->
    Backbone.history.navigate('test', {trigger: yes})

template = ->
  """
  <div class="my-header">
    <img src="static/evenbetter-logo.png"></img>
    i am a header
  </div>
  <div class="hello-world-title">HELLO World! :)</div>
  <div class="my-tabs-component"></div>
  <div class="my-footer">
    <img src="static/evenbetter-logo.png"></img>
    i am a footer
  </div>
  """
