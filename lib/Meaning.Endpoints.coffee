'use strict'

DEFAULT      = require './Meaning.default'

###*
 * Endpoints module.
 * Create the list of endpoints to use based in a match between the user preferences
 * and default configuration.
###
module.exports = (options) ->
  endpoints = DEFAULT.ENDPOINTS()
  endpoints[endpoint] = path for endpoint, path of options.endpoints
  endpoints
