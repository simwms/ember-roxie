`import Ember from 'ember'`
`import DS from 'ember-data'`
`import FormDataAdapter from '../mixins/form-data-adapter'`

RoxieS3fileAdapter = DS.RESTAdapter.extend FormDataAdapter,
  disableRoot: true
  host: "https://:bucket.s3.amazonaws.com"
  buildURL: (_modelName, _id, snapshot, _requestType, _query) ->
    bucket = snapshot.attr "bucket"
    @get("host")?.replace(":bucket", bucket)

`export default RoxieS3fileAdapter`