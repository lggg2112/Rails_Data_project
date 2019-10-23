// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

//= require jquery3
//= require jquery_ujs
//= require popper
//= require tether
//= require bootstrap
//= require turbolinks
//= require_tree