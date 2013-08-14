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
//= require foundation
//= require users
//= require classie
//= require custom.modernizr
//= require masonry.pkgd
// require masonry/jquery.masonry
// require masonry/jquery.event-drag
// require masonry/jquery.imagesloaded.min
// require masonry/jquery.infinitescroll.min
// require masonry/modernizr-transitions
// require masonry/box-maker
// require masonry/jquery.loremimages.min

$(function() {
  $(document).foundation();	
});

$(window).resize(function(){
	if($(window).width()<550){
		$('img.facebook_login').attr('src', 'assets/smallfb.png');
		$('a#fb_login').css('width','5em').css('margin-top','-0.4em').css('margin-right','0em');
	}
	else{
		$('img.facebook_login').attr('src', 'assets/Facebook_login.png');
		$('a#fb_login').css('width','20em').css('margin-top','-0.1em').css('margin-right','-4em');
	}
})
  
