// JavaScript Document

// Variable list
var currentOne = "1",
	currentBrand = "brand",
	currentService = "service",
	currentPrice = "price",
	currentPic = "pic name",
	whichOne = "1";

// initialize the page - read the XML, create the inventory list
$(document).on("pagecreate", function(){
	"use strict";
	$.ajax({
		url:"webInfo.xml",
		cache:false,
		dataType:"xml",
		success: function(xml){
			$('#inventoryList').empty();
			$(xml).find('item').each(function(){
				var info=
					'<li data-id='
					+$(this).find("ID").text()
					+'><a href=#page1><img src='
					+$(this).find("pic").text()
					+'><h1>Service: '
					+$(this).find("service").text()
					+'</h1>'
					+$(this).find("cost").text()
					+'</p><p>'
					+$(this).find("notes").text()
					+'</p></a></li>';
				$('#inventoryList').append(info).listview('refresh');
			});
		}
	});

	


// handle a click on the listview - Populate the next page with the correct information	
$("#inventoryList").on("click","li",function(){
	whichOne=($(this).attr("data-id"));
	
	$.ajax({
		url:"webInfo.xml",
		cache:false,
		dataType:"xml",
		success:function(xml1){
			
			
			$(xml1).find('item').each(function(){
				currentOne = ($(this).find("ID").text());
				if(currentOne===whichOne)
				{
					
					currentService=($(this).find("service").text());
					currentPrice=($(this).find("cost").text());
					currentPic=($(this).find("pic").text());
					
					$('#theBrand').text(currentBrand);
					$('#theService').text(currentService);
					$('#theCost').text(currentPrice);
					$('#footerText').text(currentService);
					$('#thePic').html('<img src='+currentPic+' width="300" height="225" />');
					$('#theSmallPic').html('<img src='+currentPic+' width="150" height="112" />');
					$('#CompName').text(currentService);
					
				}
			});
			
		}
	});
	
	});
	
});
