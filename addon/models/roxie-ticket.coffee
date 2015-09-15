`import DS from 'ember-data'`

RoxieTicket = DS.Model.extend
  acl: DS.attr "string"
  key: DS.attr "string"
  bucket: DS.attr "string"
  policy64: DS.attr "string"
  signature: DS.attr "string"
  accessKeyId: DS.attr "string"
  postUrl: DS.attr "string"
  showUrl: DS.attr "string"
  expiresAt: DS.attr "date"
  insertedAt: DS.attr "date"
  updatedAt: DS.attr "date"

`export default RoxieTicket`