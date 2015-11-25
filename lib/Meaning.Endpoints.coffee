'use strict'

DEFAULT = require './Meaning.default'

###*
 * Endpoints module.
 * Create the list of endpoints to use based in a match between the user preferences
 * and default configuration.
###
module.exports = (options = {}) ->
  endpoints = {}

  for endpoint in Object.keys DEFAULT.ENDPOINTS
    endpoints[endpoint] = options[endpoint] or DEFAULT.ENDPOINTS[endpoint]

  endpoints
