`import { moduleFor, test } from 'ember-qunit'`

moduleFor 'adapter:roxie-s3file', 'Unit | Adapter | roxie s3file', {
  # Specify the other units that are required for this test.
  # needs: ['serializer:foo']
}

# Replace this with your real tests.
test 'it exists', (assert) ->
  adapter = @subject()
  assert.ok adapter
