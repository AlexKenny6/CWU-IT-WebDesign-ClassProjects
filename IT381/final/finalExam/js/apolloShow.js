// JavaScript Document

// Variable list
var currentOne = "1",
    crewPic = "pic name",
    currentFlight = "flight"
    currentCrew = "Crew"
	whichOne = "1";

// initialize the page - read the XML, create the list
$(document).on("pagecreate", function(){
	"use strict";
	$.ajax({
		url:"js/apollo.xml",
		cache:false,
		dataType:"xml",
		success: function(xml){
			$('#apolloList').empty();
			$(xml).find('apollo').each(function(){
				var info=
                    '<li data-id='+$(this).find("ID").text()+'>'

                        +'<a href=#page2>'
                            // img
                            +'<img src=img/'+$(this).find("Patch").text()+' id="flightPatch">'

                            // Flight
                            +'<h1>Flight: '+$(this).find("Flight").text()+'</h1>'

                            // Crew
                            +'<p>Crew: '+$(this).find("Crew").text()+'</p>'

                            // Spacecraft
                            +'<p>Spacecraft: '+$(this).find("Spacecraft").text()+'</p>'

                            // Notes
                            +'<p>Notes: '+$(this).find("Notes").text()+'</p>'
                        +'</a>'

                    +'</li>';
				$('#apolloList').append(info).listview('refresh');
			});
		}
	});

	


// handle a click on the listview - Populate the next page with the correct information	
$("#apolloList").on("click","li",function(){
	whichOne=($(this).attr("data-id"));
	
	$.ajax({
		url:"js/apollo.xml",
		cache:false,
		dataType:"xml",
		success:function(xml1){
			
			$(xml1).find('apollo').each(function(){
				currentOne = ($(this).find("ID").text());
				if(currentOne===whichOne) {
			
                    // current flight
                    currentFlight = ($(this).find("Flight").text());
                    // crew picture var
                    crewPic = ($(this).find("CrewPic").text());
                    // current flight crew
                    currentCrew = ($(this).find("Crew").text());

                    $('#theFlight').html('<h1>Historic Flight: '+currentFlight+'</h1><br>');
					$('#thePic').html('<img src=img/crew/'+crewPic+' width="500" height="400" />'+'<br><br>');
                    $('#theCrew').html('Flight Crew: <i>'+currentCrew+'</i>');
					
				}
			});
			
		}
	});
	
	});
	
});