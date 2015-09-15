# Takes two parameters: container and application
initialize = (container, application) ->
  application.inject("controller", "s3post", "service:s3post")
  application.inject("route", "s3post", "service:s3post")

RoxieInitializer =
  name: 'roxie'
  initialize: initialize

`export {initialize}`
`export default RoxieInitializer`
