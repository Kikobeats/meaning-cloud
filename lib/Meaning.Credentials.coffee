'use strict'

DEFAULT       = require './Meaning.default'
existsDefault = require 'existential-default'

###*
 * Credentials module.
 * The minimum information that you need to provide is the API key.
 * Optionally you can specify if use a secure protocol (HTTPS by default).
 * You can provide the URI as well.
###
module.exports = (options) ->
  throw Error 'You need to provide an API credentials' unless options.key

  credentials = key: options.key
  uri         = existsDefault options.uri, DEFAULT.URI
  secure      = existsDefault options.secure, DEFAULT.SECURE

  credentials.url = DEFAULT.SECURE_MODE[secure]
  credentials.url += "://#{uri}"

  credentials
