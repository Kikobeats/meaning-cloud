'use strict'

DEFAULT = require './Meaning.default'

module.exports = class Credentials

  constructor: (options) ->
    throw new Error 'You need to provide an API credentials' unless options.key
    @key = options.key
    secure = if options.secure? then options.secure else true
    uri = if options.uri? then options.uri else DEFAULT.URI
    @url = if secure then 'https' else 'http'
    @url += "://#{uri}"
    this
