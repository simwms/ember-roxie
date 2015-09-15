`import Ember from 'ember'`
`import dataUriToBlob from '../utils/data-uri-to-blob'`
`import uniqueValue from '../utils/unique-value'`

S3PostService = Ember.Service.extend
  instanceSetup: (@store, @account) ->
  persist: (dataUri) ->
    @acquireRoxieTicket(dataUri)
    .then (ticket) =>
      @uploadToS3(ticket)

  acquireRoxieTicket: (dataUri) ->
    file = dataUriToBlob dataUri
    @store.queryRecord "roxieTicket", @calculateTicketParams(file)
    .then (ticket) ->
      ticket.set "file", file
      ticket

  uploadToS3: (ticket) ->
    @acquireRoxieS3file ticket    
    .save()
    .then (s3file) ->
      ticket.set "s3file", s3file
      ticket

  acquireRoxieS3file: (ticket) ->
    @store.createRecord "roxieS3file", @calculateS3params(ticket)

  calculateS3params: (ticket) ->
    bucket: ticket.get("bucket")
    file: ticket.get("file")
    acl: ticket.get("acl")
    key: ticket.get("key")
    signature: ticket.get("signature")
    policy: ticket.get("policy64")
    AWSAccessKeyId: ticket.get("accessKeyId")

  calculateTicketParams: (file) ->
    dirname = @getWithDefault("account.id", "s3post")

    storage_class: @getWithDefault("storageClass", "REDUCED_REDUNDANCY")
    bucket: @getWithDefault("bucket", "simwms")
    filename: [dirname, @generateFilename(file.type)].join("/")
    

  generateFilename: (filetype) ->
    uniqueValue() + switch filetype
      when "image/jpg", "image/jpeg" then ".jpg"
      when "image/png" then ".png"
      else throw "unknown filetype #{filetype}"

`export default S3PostService`