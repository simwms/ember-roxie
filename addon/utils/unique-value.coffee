`import moment from 'moment'`

uniqueValue = ->
  timestamp = moment().format("MMMM-Do-YYYY-h-mm-ss-a")
  randomark = Math.floor Math.random() * 0xffffff
  "#{timestamp}-#{randomark}"

`export default uniqueValue`