`import DS from 'ember-data'`

RoxieS3file = DS.Model.extend
  # Virtual Attributes
  ticket: null

  # Serializing attributes
  # Note: DO NOT CHANGE THE ORDER OF THE ATTRIBUTES
  # For some dumb reason, amazon requires the key to come first
  key: DS.attr "string"
  acl: DS.attr "string", defaultValue: "public-read"
  bucket: DS.attr "string"
  signature: DS.attr "string"
  policy: DS.attr "string"
  AWSAccessKeyId: DS.attr "string"
  "x-amz-storage-class": DS.attr "string", defaultValue: "REDUCED_REDUNDANCY"
  file: DS.attr "file"

`export default RoxieS3file`
