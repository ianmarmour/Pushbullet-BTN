/**
 * Name: lib/app.js
 * Author: ther1v3r
 * Date: 5/28/2015
 **/

var config = require('./config.json');
var PushBullet = require('pushbullet');
var pusher = new PushBullet(config.pushbulletapikey);
var irc = require('irc');
var client = new irc.Client('irc.broadcasthe.net', config.btnusername, {
	autoConnect: false
});

client.addListener('error', function(message) {
	console.log('error: ', message);
});

client.connect(5, function(input) {
	console.log("Connected!");
	client.say('nickserv', 'IDENTIFY ' + config.btnircpassword);
});

client.addListener('pm', function (from, message) {

	console.log(from + ' => ME: ' + message);

	pusher.note('', 'TV-SHOW Downloaded', message, function (error, response) {});

});

