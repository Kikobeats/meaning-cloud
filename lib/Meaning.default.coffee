'use strict'

###*
 * Default modules.
 * Settings to use across the library when the user doesn't provide and overwrite.
###
module.exports =

  URI                       : 'api.meaningcloud.com'
  SECURE                    : true
  SECURE_MODE:
    true                    : 'https'
    false                   : 'http'
  ENDPOINTS: ->
    return {
      user_profiling          : '/userprofiling-2.0'
      text_classification     : '/class-1.1'
      topics_extraction       : '/topics-1.2'
      sentiment_analysis      : '/sentiment-2.0'
      language_identification : '/lang-1.1'
      parsing                 : '/parser-1.2'
      spelling                : '/stilus-1.2'
      reputation              : '/reputation-1.0'
    }
