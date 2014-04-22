// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require list
//= require select2
//= require_tree .

$(function(){
  $(document).foundation();

  var options = {
    valueNames: ['post-title', 'post-body']
  };
  new List('searchable-posts', options);

  var options = {
    valueNames: ['feed-title', 'feed-body']
  };
  new List('searchable-feeds', options);

  $("#feed_category_ids").select2({tokenSeparators: [",", " "], placeholder: 'Enter some cool categories'});
});

