// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require backbone_rails_sync
//= require backbone_datalink
//= require backbone/mcc
//= require_tree .

var Application = Backbone.Model.extend({
  initialize: function() {},
  showEditor: function(editing) {
    document.cookie = 'editing=' + editing;
    top.location.href = top.location.href;
  }
});

window.app = new Application();


jQuery(window).on('mercury:ready', function() { Mercury.saveUrl = '/save'; });
