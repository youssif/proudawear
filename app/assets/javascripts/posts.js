// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

// // http://masonry.desandro.com/masonry.pkgd.js added as external resource

// http://masonry.desandro.com/masonry.pkgd.js added as external resource

// $(window).load(function(){
//   $('#masonryContainer').masonry({  
//     itemSelector: '.masonry-brick',
//     columnWidth: 240
//   });  
// });    

$(window).load(function(){
	var container = document.querySelector('#masonryContainer');
	var msnry = new Masonry( container, {
		columnWidth: 140,
		itemSelector: '.masonry-brick'
	});
	console.log("HERE HERE HERE");
});

$(function(){
  $('#masonry-container').masonry({
    itemSelector: '.box',
    columnWidth: 100,
    gutterWidth: 40
  });
});



