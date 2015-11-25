'use strict'

DEFAULT = require './Meaning.DEFAULT'

###*
 * Credentials module.
 * The minimum information that you need to provide is the API key.
 * Optionally you can specify if use a secure protocol (HTTPS by default).
 * You can provide the URI as well.
###
module.exports = (options) ->
  throw Error 'You need to provide an API credentials' unless options.key

  credentials =
    key: options.key

  secure = if options.secure? then options.secure else true
  uri = if options.uri? then options.uri else DEFAULT.URI

  credentials.url = if secure then 'https' else 'http'
  credentials.url += "://#{uri}"

  credentials
