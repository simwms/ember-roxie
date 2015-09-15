# Takes two parameters: container and application
initialize = (instance) ->
  s3post = instance.container.lookup "service:s3post"
  currentUser = instance.container.lookup "service:user-session"
  store = instance.container.lookup "service:store"
  s3post.instanceSetup store, currentUser

RoxieInitializer =
  name: 'roxie'
  initialize: initialize

`export {initialize}`
`export default RoxieInitializer`
