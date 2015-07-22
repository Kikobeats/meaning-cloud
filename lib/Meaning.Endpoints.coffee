'use strict'

DEFAULT = require './Meaning.default'

###*
 * Endpoints module.
 * Create the list of endpoints to use based in a match between the user preferences
 * and default configuration.
###
module.exports = class Endpoints
  constructor: (options = {}) ->
    for endpoint in Object.keys DEFAULT.ENDPOINTS
      @[endpoint] = options[endpoint] or DEFAULT.ENDPOINTS[endpoint]
    this
