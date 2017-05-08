// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// = require jquery
// = require jquery_ujs
// = require jquery-ui
//= require turbolinks
//= require_tree .

window.onload = function() {
    var video = document.getElementById('video');
    var customMessage = document.getElementById('splashtext');
    var customMessageTop = (video.offsetHeight / 2) - (customMessage.offsetHeight / 2);
    var customMessageLeft = (video.offsetWidth / 2) - (customMessage.offsetWidth  / 2);

    var splashBttn = document.getElementById('sbuttons');
    var splashBttnTop = (video.offsetHeight / 3) - (splashBttn.offsetHeight / 3);
    var splashBttnLeft = (video.offsetWidth / 2) - (splashBttn.offsetWidth  / 2);

    customMessage.style.left = customMessageLeft + 'px';
    customMessage.style.top = customMessageTop + 'px';

    splashBttn.style.left = customMessageLeft + 'px';
    splashBttn.style.top = customMessageTop + 'px';
};
