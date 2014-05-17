
require 'shelljs/make'

mission = require 'mission'

target.rsync = ->

  mission.rsync
    from: './'
    dest: 'tiye:~/server/dump-plan/'
    options:
      exclude: [
        'data/'
        'node_modules/'
        '.git/'
      ]