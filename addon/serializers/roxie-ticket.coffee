`import DS from 'ember-data'`
`import {ActiveModelSerializer} from 'active-model-adapter'`

RoxieTicketSerializer = ActiveModelSerializer.extend
  modelNameFromPayloadKey: -> "roxieTicket"

`export default RoxieTicketSerializer`
