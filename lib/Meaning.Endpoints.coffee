'use strict'

DEFAULT = require './Meaning.default'

module.exports = class Endpoints

  constructor: (options = {}) ->
    for endpoint in Object.keys DEFAULT.ENDPOINTS
      @[endpoint] = options[endpoint] or DEFAULT.ENDPOINTS[endpoint]
    this
