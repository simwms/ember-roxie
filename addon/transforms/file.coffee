`import DS from 'ember-data'`

FileTransform = DS.Transform.extend
  deserialize: (serialized) ->
    serialized

  serialize: (deserialized) ->
    deserialized

`export default FileTransform`
