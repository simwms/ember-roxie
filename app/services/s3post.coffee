`import ENV from '../config/environment'`
`import Service from 'ember-roxie/services/s3post'`

S = Service.extend
  bucket: ENV.s3Bucket
  storageClass: ENV.s3StorageClass

`export default S` 
