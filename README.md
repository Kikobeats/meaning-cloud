# meaning-cloud

<h1 align="center">
  <br>
  <img src="http://i.imgur.com/uVU2cmG.png" alt="meaning-cloud">
  <br>
  <br>
</h1>

![Last version](https://img.shields.io/github/tag/Kikobeats/meaning-cloud.svg?style=flat-square)
[![Dependency status](http://img.shields.io/david/Kikobeats/meaning-cloud.svg?style=flat-square)](https://david-dm.org/Kikobeats/meaning-cloud)
[![Dev Dependencies Status](http://img.shields.io/david/dev/Kikobeats/meaning-cloud.svg?style=flat-square)](https://david-dm.org/Kikobeats/meaning-cloud#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/meaning-cloud.svg?style=flat-square)](https://www.npmjs.org/package/meaning-cloud)
[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg?style=flat-square)](https://paypal.me/kikobeats)

> NodeJS Client for interact with Meaning Cloud API.

## Install

```bash
npm install meaning-cloud --save
```

If you want to use in the browser (powered by [Browserify](http://browserify.org/)):

```bash
bower install meaning-cloud --save
```

and later link in your HTML:

```html
<script src="bower_components/meaning-cloud/dist/meaning-cloud.js"></script>
```

## Usage

First require the library:

```js
var MeaningCloud = require('meaning-cloud');
```

Minimal configuration:

```js
var meaning = new MeaningCloud({
  key: process.env.API_KEY // API Key. Required.
  secure: true             // HTTPS or HTTPS. Optional, true by default.
  uri: 'custom-uri'        // URI to create the API endpoints. Optional.
});
```
A [list of default endpoints and API versions](https://github.com/Kikobeats/meaning-cloud/blob/master/lib/Meaning.default.coffee) is provided. If you need a particular version or endpoint, specify it in the constructor using the endpoint keywords, for example:

```js
var meaning = new MeaningCloud({
  key: process.env.API_KEY
  endpoints: {
    topics_extraction: '/topics-1.1'
  }
});
```

The library support standard NodeJS callback and Promise workflow as well.

## Examples

See [example.js](https://github.com/Kikobeats/meaning-cloud/blob/master/example.js)

## License

MIT © [Kiko Beats](http://www.kikobeats.com)
