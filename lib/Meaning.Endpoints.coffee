'use strict'

objectAssign = require 'object-assign'
DEFAULT      = require './Meaning.default'

###*
 * Endpoints module.
 * Create the list of endpoints to use based in a match between the user preferences
 * and default configuration.
###
module.exports = (options) ->
  objectAssign DEFAULT.ENDPOINTS, options.endpoints
