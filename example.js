'use strict';

var MeaningCloud = require('./index.js');
var meaning = new MeaningCloud({
  key: process.env.API_KEY
});

// User Profiling

meaning.user_profiling({
  mode: 'th',
  login_name: '@Kikobeats',
  lang: 'en'
}, console.log);

// Text Classification

// meaning.text_clasification({
//   model: 'IAB_en',
//   txt: 'Computer Science & Software Engineer at @Socialbro. Coding Passionate. Web is the platform. JavaScript, CoffeeScript, NodeJS & Open Source.'
// }, console.log);
