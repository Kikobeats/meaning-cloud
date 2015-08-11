'use strict';

var MeaningCloud = require('./index.js');
var meaning = new MeaningCloud({
  key: process.env.API_KEY
});

// User Profiling

/// Callback mode

meaning.user_profiling({
  mode: 'th',
  login_name: '@Kikobeats',
  lang: 'en'
}, function(err, body, res) {
  console.log(body);
});

/// Promise mode

// meaning.user_profiling({
//   mode: 'th',
//   login_name: '@Kikobeats',
//   lang: 'en'
// }).then(function(res) {
//   console.log(res.body);
// });
