`import Ember from 'ember'`
`import dataUriToBlob from 'ember-roxie/utils/data-uri-to-blob'`
IndexController = Ember.Controller.extend
  urls: Ember.A()
  blobs: Ember.computed.map "urls", dataUriToBlob
  blobUrls: Ember.computed.map "blobs", URL.createObjectURL
  actions:
    submit: ->
      url = @get "urls.firstObject"
      @s3post.persist url
      .then (ticket) ->
        window.ticket = ticket
        console.log ticket
      .catch (error) ->
        console.log error
        throw error

`export default IndexController`