`import Ember from 'ember'`
`import ActiveModelAdapter from 'active-model-adapter'`

volatile = ->
  Ember.computed(arguments...).volatile()
  
RoxieTicketAdapter = ActiveModelAdapter.extend
  pathForType: (modelName) ->
    "ticket"
  headers: volatile "currentUser.roxieKey", ->
    "roxie-master-key": @getWithDefault("currentUser.roxieKey", @get("roxieMasterKey"))

`export default RoxieTicketAdapter`