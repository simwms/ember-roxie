`import { moduleForModel, test } from 'ember-qunit'`

moduleForModel 'roxie-ticket', 'Unit | Serializer | roxie ticket',
  # Specify the other units that are required for this test.
  needs: ['serializer:roxie-ticket']

# Replace this with your real tests.
test 'it serializes records', (assert) ->
  record = @subject()

  serializedRecord = record.serialize()

  assert.ok serializedRecord
