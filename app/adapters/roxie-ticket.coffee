`import ENV from '../config/environment'`
`import Adapter from 'ember-roxie/adapters/roxie-ticket'`

A = Adapter.extend
  namespace: ENV.roxieNamespace # "master"
  host: ENV.roxieHost # "https://pacific-ravine-5812.herokuapp.com"
  roxieMasterKey: ENV.roxieMasterKey

`export default A`
