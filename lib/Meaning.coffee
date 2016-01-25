'use strict'

got         = require 'got'
pkg         = require './../package.json'
DEFAULT     = require './Meaning.default'
Endpoints   = require './Meaning.Endpoints'
Credentials = require './Meaning.Credentials'

createRequest = (url, apiKey) ->
  (params, cb) ->
    params.key = apiKey

    options =
      body: params
      headers:
        'user-agent': pkg.homepage

    return got.post url, options, cb if cb
    got.post url, options

###*
 * Main module.
 *
 * Expose the client to interact with the API.
 * This module load load others submodules and you can provide params for overwrite
 * specific submodules configuration.
 * @type {[type]}
###
module.exports = (options = {}) ->
    credentials = Credentials options
    endpoints   = Endpoints options
    methods     = {}

    for endpoint, path of endpoints
      methods[endpoint] = createRequest credentials.url + path, credentials.key

    methods
