// JavaScript Document
$(document).ready(function() {
	'use strict';
	
	//ajax jquery call
	$.ajax({
		url:"js/apollo.xml",
		cache: false,
		dataType: "xml",
		success: function(xml) {
			// empties div on the screen
			$("#contents").empty();
			
			//find each record in xml file
			$(xml).find("apollo").each(function() {
				
				//creates dynamic data below
				var info = '<div class="leftCol"><img src=images/'
				+$(this).find("Patch").text()
				+' width="130" height="130" alt="'
				+$(this).find("Flight").text()
				+' Flight Patch" /></div>'
				+'<div class="rightCol"><strong>Flight: '
				+'<a href='
				+$(this).find("TheLink").text()+'>'
				+$(this).find("Flight").text()
				+'</a></strong><br>Crew: '
				+$(this).find("Crew").text()
				+'<br>Notes: '
				+$(this).find("Notes").text()
				+'</div><br class="clearIt">';
				
				//adds info to page
				$("#contents").append(info);
				
			});
		}
	});
});