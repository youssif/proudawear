// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

// // http://masonry.desandro.com/masonry.pkgd.js added as external resource

// http://masonry.desandro.com/masonry.pkgd.js added as external resource

$(document).ready(function() {
  var $container = $('#container');
  $container.imagesLoaded( function() {
      $container.masonry({
      	animate: true,
      	itemSelector: '.item'
      });
  });
});

// setInterval(function() {
// 	$('#container').width()
// }, 500);
