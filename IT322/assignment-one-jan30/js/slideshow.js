
$(document).ready(function(){
	var numClick = 0;	
	$("#pano").click(function(){
		// Change the "12" in the next line so it equals the number of pictures in your slideshow!
		if (numClick <5) {
		// Change the "540" so it equals the width of one picture
			$(this).animate({left:"-=320px"},2000);
			numClick ++;
		}
		// Change the "12" in the next line so it equals the number of pictures in your slideshow!
		if (numClick == 5) {
			$(this).animate({left:"640px"},100);
			numClick = 0;
		}
	});
});



$( window ).click(function() {
	// 	explode toggle/hide/show - pieces: must be a integer squared (4, 9, 16, 25 etc.) - speed
  $( "#effectDiv" ).toggle( "explode",{pieces:16},"slow" );

});


$(function() {
	$("#mytabs").tabs();
});
