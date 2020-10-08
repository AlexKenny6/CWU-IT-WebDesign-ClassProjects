// JavaScript Document

// THIS IS THE JS FILE TO USE
$(document).ready(function(){
		'use strict';
		var currentID = 1;
		populateBasketball(4); //force the first one to be displayed
		populateFashion(4);
		
		// function to get button value and send it to populatePage()
		$(".button").on('click',function(){
			var clickedValue = $(this).val();
			populateBasketball(clickedValue);		
		});

		$(".button").on('click',function(){
			var clickedValue = $(this).val();
			populateFashion(clickedValue);		
		});

		
		function populateBasketball(currentID){
		//use jQuery ajax call
		$.ajax({
			url:"xml/basketballProducts.xml",
			cache: false,
			dataType: "xml",
			success: function(xml){
				//empty the div on the screen
				$("#basketball").empty();
				//$("#bigPic").empty();
				//find each record - print is the name of the table
				$(xml).find("print").each(function(){
					//create the set of data using the fields in the xml
					var basketballShoe = 

						'<div>'
						
							+'<center>'
								+'<h3 class="patch-text">' + $(this).find("subject").text() + '</h3>'
							
								+'<img class="patch-img" src=images/'
								+$(this).find("photo").text()
								+' alt="'
								+$(this).find("subject").text()
								+' Image"/>'
							+'</center>'

								+'<p class="small-text" style="padding:10px;">'
									+$(this).find("desc").text()
								+'</p>'
			
							+'<center>'
								+'<p class="center-anything" style="color:grey;">'
									+'Available Shoe Sizes: '
									+$(this).find("Sizes").text()
									+'<br><br>'
									+'Currently At: '
									+$(this).find("cost").text()
								+'</p>'
								+'<button class="buy-btn">Buy Now!</button>'
							+'</center>'

						+'</div>';

				// add the leftColInfo to the div on the page
					if ($(this).find("ID").text()==currentID){
						$("#basketball").append(basketballShoe);
					};
				});
			} // end of xml func

		}); // end of ajax call

	}; // end of currentID func


	function populateFashion(currentID){
		//use jQuery ajax call
		$.ajax({
			url:"xml/fashionProducts.xml",
			cache: false,
			dataType: "xml",
			success: function(xml){
				//empty the div on the screen
				$("#fashion").empty();
				//$("#bigPic").empty();
				//find each record - print is the name of the table
				$(xml).find("print").each(function(){
					//create the set of data using the fields in the xml
					var fashionShoe = 

						'<div>'
						
							+'<center>'
								+'<h3 class="patch-text">' + $(this).find("subject").text() + '</h3>'
									+'<img class="patch-img" src=images/'
									+$(this).find("photo").text()
									+' alt="'
									+$(this).find("subject").text()
									+' Image"/>'
							+'</center>'

								+'<p class="small-text" style="padding:10px;">'
									+$(this).find("desc").text()
								+'</p>'
			
							+'<center>'
								+'<p style="color:grey;">'
									+'Available Shoe Sizes: '
									+$(this).find("Sizes").text()
									+'<br><br>'
									+'Currently At: '
									+$(this).find("cost").text()
								+'</p>'
								+'<button class="buy-btn">Buy Now!</button>'
							+'</center>'
						+'</div>';

				// add the leftColInfo to the div on the page
					if ($(this).find("ID").text()==currentID){
						$("#fashion").append(fashionShoe);
					};
				});
			} // end of xml func

		}); // end of ajax call

	}; // end of currentID func
	
}); // end of doc ready func
