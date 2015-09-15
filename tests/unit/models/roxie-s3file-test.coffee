`import { moduleForModel, test } from 'ember-qunit'`

moduleForModel 'roxie-s3file', 'Unit | Model | roxie s3file', {
  # Specify the other units that are required for this test.
  needs: []
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model
