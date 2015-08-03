'use strict'

got                = require 'got'
Endpoints          = require './Meaning.Endpoints'
Credentials        = require './Meaning.Credentials'
DEFAULT            = require './Meaning.default'

createRequest = (url, apiKey) ->
  (params, cb) ->
    params.key = apiKey
    got.post url,
      body: params
    , cb

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
