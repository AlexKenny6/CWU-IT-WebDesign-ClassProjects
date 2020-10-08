
// JavaScript Document

// THIS IS THE JS FILE TO USE
$(document).ready(function(){
		'use strict';
		var currentID = 1;
		populatePage(4); //force the first one to be displayed
		
		// function to get button value and send it to populatePage()
		$(".button").on('click',function(){
			var clickedValue = $(this).val();
			populatePage(clickedValue);		
		});
		
		function populatePage(currentID){
		//use jQuery ajax call
		$.ajax({
			url:"xml/products.xml",
			cache: false,
			dataType: "xml",
			success: function(xml){
				//empty the div on the screen
				$("#contents").empty();
				//$("#bigPic").empty();
				//find each record - print is the name of the table
				$(xml).find("print").each(function(){
					//create the set of data using the fields in the xml
					var product = 



					'<div class="col-md-3 pb-1 pb-md-0">'
						+'<div class="card">'
							+'<img class="card-img-top" src=images/' +$(this).find("photo").text() + '>'
							+'<div class="card-body">'
								+'<h5 class="card-title">'+ $(this).find("subject").text() + '</h5>'
								+'<p class="card-text">'+ $(this).find("desc").text() + '</p>'
								
							+'</div>'
						+'</div>'
					+'</div>';

					var rightColInfo =
 
						'<div class="rightCol">'
							// start of rightCol div code
							+'<h3 class="patch-text">' + $(this).find("subject").text() + ' Info</h3>'
							+'<br>'
							+'<p class="center-anything" style="color:red;">'
								+'Price: '
								+$(this).find("cost").text()
							+'</p>'



							+'<p class="center-anything small-text">'
								+'Print Size: '
								+$(this).find("printSizes").text()
								+'<br><br>Image Description: '
								+$(this).find("desc").text()
							+'</p>'
							+'<br>'
							+'<center><button class="buy-btn">Ordering Information</button></center>'
							

							// end of rightCol div code
						+'</div><br class="clearIt">';
					// end of rightColInfo


				// add the leftColInfo to the div on the page
					if ($(this).find("ID").text()==currentID){
						$("#contents").append(product);
						
					};
				});
			} // end of xml func

		}); // end of ajax call

	}; // end of currentID func
	
}); // end of doc ready func








