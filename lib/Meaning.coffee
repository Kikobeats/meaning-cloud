'use strict'

request            = require 'request'
Endpoints          = require './Meaning.Endpoints'
Credentials        = require './Meaning.Credentials'
DEFAULT            = require './Meaning.default'

createRequest = (url, apiKey) ->
  (params, cb) ->
    params.key = apiKey
    request.post
      url: url
      formData: params
    , (err, httpResponse, body) ->
      cb err, body

module.exports = class MeaningCloud

  constructor: (options) ->
    @credentials = new Credentials options
    @endpoints = new Endpoints options.endpoints
    for endpoint in Object.keys DEFAULT.ENDPOINTS
      @[endpoint] = createRequest @credentials.url + @endpoints[endpoint], @credentials.key
    this
