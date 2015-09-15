`import { moduleFor, test } from 'ember-qunit'`
`import dataUriToBlob from 'ember-roxie/utils/data-uri-to-blob'`
`import Fixtures from '../../helpers/fixtures'`

moduleFor 'service:s3post', 'Unit | Service | s3post', {
  # Specify the other units that are required for this test.
  # needs: ['service:store']
}

# Replace this with your real tests.
test 'it exists', (assert) ->
  service = @subject()
  assert.ok service
  assert.ok Fixtures.fatass


test "calculateTicketParams", (assert) ->
  service = @subject()
  blob = dataUriToBlob Fixtures.fatass
  assert.equal blob.type, "image/jpeg"

  params = service.calculateTicketParams(blob)
  assert.ok params.filename