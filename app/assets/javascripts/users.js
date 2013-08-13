// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

// Example mouse enter/leave funcitonality:
// $(document).ready(function(){
//   $('img').mouseenter(function(){
//     var image= $(this).find('img'), caption = $(this).find('div');
//     caption.width(image.width());
//     caption.height(image.height());
//     caption.fadeIn();
//   }).mouseleave(function(){
//     var image= $(this).find('img'), caption = $(this).find('div');
//     caption.width(image.width());
//     caption.height(image.height());
//     caption.fadeOut();
//   });
// });


// ----- Clears the 'Edit' and "Delete id selectors" -----
  $('.edit').empty();
  $('.delete').empty();

  // $(document).ready(function(){
    $('img').mouseenter(function(){
			$('.edit').append("<a href='/view/clothes/1'>link me</a>");
			$('.delete').append("Delete");
    });
    // $('img').mouseleave(function(){
    // 	  $('.edit').empty();
  		// 	$('.delete').empty();
    // });
  // )};
