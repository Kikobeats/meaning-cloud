'use strict'

DEFAULT = require './Meaning.default'

###*
 * Credentials module.
 * The minimum information that you need to provide is the API key.
 * Optionally you can specify if use a secure protocol (HTTPS by default).
 * You can provide the URI as well.
###
module.exports = class Credentials
  constructor: (options) ->
    throw new Error 'You need to provide an API credentials' unless options.key
    @key = options.key
    secure = if options.secure? then options.secure else true
    uri = if options.uri? then options.uri else DEFAULT.URI
    @url = if secure then 'https' else 'http'
    @url += "://#{uri}"
    this
