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
        name: 'tab1'
        viewConstructor: TextView
        viewOptions: {text: 'i am tab 1'}
      }
      {
        name: 'tab2'
        viewConstructor: TextView
        viewOptions: {text: 'i am tab 2'}
      }
      ])


  _titleClicked: ->
    Backbone.history.navigate('test', {trigger: yes})

template = ->
  """
  <div class="hello-world-title">HELLO World! :)</div>
  <div class="my-tabs-component"></div>
  """
