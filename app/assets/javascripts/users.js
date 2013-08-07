// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

// ----- Javascript Practice -----
//  movie = prompt("What movie do you like?");
// time = prompt("What time would you like?");
// answer = prompt("Great! Would you like to go see " + movie + " with me tonight at " + time + "?")
// console.log(answer);


// grocery_list = ["bananas", "apples", "strawberries", "spinach"]
// $.each(grocery_list, function(i, item){
//     alert('You need to buy ' + item);
//   }
// );
// console.log("Youre done shopping!")

// ----- Code starts here ------
var img = $('div .box .item .photo .centered')
$(document).ready(function(){
  $('img').mouseenter(function(){
    var image= $(this).find('img'), caption = $(this).find('div');
    caption.width(image.width());
    caption.height(image.height());
    caption.fadeIn();
  }).mouseleave(function(){
    var image= $(this).find('img'), caption = $(this).find('div');
    caption.width(image.width());
    caption.height(image.height());
    caption.fadeOut();
  });
});
