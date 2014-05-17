
require 'shelljs/global'

moment = require 'moment'

mkdir '-p', 'data/'
cd 'data/'

dbName = 'topics'
format = 'YYYY-MM-DD_HH-mm-ss'
hour = (n) -> 3600 * 1000

dump = ->
  today = moment().format format

  exec "mongodump -d #{dbName} -o #{today}", silent: yes, ->
    console.log 'dump at', today

clean = ->
  now = moment()

  snapshots = ls './'

  for snapshot in snapshots
    time = moment snapshot, format

    if (now.diff time, 'hours') > 40
      rm '-rf', snapshot
      console.log '...remove dump', snapshot

do task = ->
  dump()
  clean()

setInterval task, (hour 7)