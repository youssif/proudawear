// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

// // http://masonry.desandro.com/masonry.pkgd.js added as external resource

// http://masonry.desandro.com/masonry.pkgd.js added as external resource

// $(document).ready(function() {
  
 



// setInterval(function() {
// 	$('#container').width()
// }, 500);

$(window).load(function(){
	$('#posts_container_wrapper').height('100%')
	$('#posts_container').height('100%');
});

$(window).resize(function(){
	if($(window).width()<670){
		$('img.facebook_login').attr('src', 'assets/smallfb.png');
		$('a#fb_login').css('width','5em').css('margin-top','-0.4em').css('margin-right','0em');
		$('a#user_name').text('')
		$('ul.logged_in').css('margin-right','-1.3em')
	}
	else{
		$('img.facebook_login').attr('src', 'assets/Facebook_login.png');
		$('a#fb_login').css('width','20em').css('margin-top','-0.1em').css('margin-right','-4em');
		$('a#user_name').html(originalContent);
		$('ul.logged_in').css('margin-right','0em');
	};
})