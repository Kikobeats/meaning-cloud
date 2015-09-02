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
module.exports = class MeaningCloud
  constructor: (options) ->
    @credentials = new Credentials options
    @endpoints = new Endpoints options.endpoints
    for endpoint in Object.keys DEFAULT.ENDPOINTS
      @[endpoint] = createRequest @credentials.url + @endpoints[endpoint], @credentials.key
    this
