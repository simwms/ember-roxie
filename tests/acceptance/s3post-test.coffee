`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from '../../tests/helpers/start-app'`
`import Fixtures from '../helpers/fixtures'`

module 'Acceptance: S3post',
  beforeEach: ->
    @application = startApp()
    ###
    Don't return anything, because QUnit looks for a .then
    that is present on Ember.Application, but is deprecated.
    ###
    return

  afterEach: ->
    Ember.run @application, 'destroy'

test 's3post service', (assert) ->
  visit "/"
  s3post = @application.__container__.lookup("service:s3post")
  ctrl = @application.__container__.lookup("controller:index")
  assert.ok ctrl.s3post
  assert.equal typeof ctrl.s3post.persist, "function"

  andThen ->
    assert.ok s3post
    assert.equal typeof s3post.persist, "function"

    s3post.acquireRoxieTicket Fixtures.fatass
    .then (ticket) ->
      assert.ok ticket, "ticket should be there"
      assert.ok ticket.get("id"), "tickets should have id"
      assert.ok ticket.get("signature"), "ticket should have signature"
      assert.ok ticket.get("accessKeyId"), "ticket should have the access key"
      assert.ok ticket.get("key"), "key"
      assert.equal typeof ticket.get("file"), "object", "is object"
      assert.equal ticket.get("file").type, "image/jpeg", "is jpeg"
      ticket
    .then (ticket) ->
      s3file = s3post.acquireRoxieS3file ticket
      assert.ok s3file.get("signature"), "signature"
      assert.ok s3file.get("key"), "key"
      assert.ok s3file.get("policy"), "policy"
      assert.equal s3file.get("bucket"), "simwms", "bucket"