
// Dynamic messages to filter

// $(document).ready(function(){
// 	'use strict';
// 	//var currentID = 1;
// 	populatePage(4); //force the first one to be displayed
	
// 	// function to get button value and send it to populatePage()
// 	$(".button").on('click',function(){
// 		//var clickedValue = $(this).val();
// 		populatePage(clickedValue);		
// 	});
	
// 	function populatePage(/*currentID*/){
// 	// function populatePage(/*currentID){
// 	//use jQuery ajax call
// 		$.ajax({
// 			url:"xml/progress.xml",
// 			cache: false,
// 			dataType: "xml",
// 			success: function(xml){
// 				//empty the div on the screen
// 				$("#dynamic").empty();
// 				//$("#bigPic").empty();
// 				//find each record - print is the name of the table
// 				$(xml).find("report").each(function(){
// 					//create the set of data using the fields in the xml
// 					var sortingInfo = 

// 						'<li>'+$(this).find("topic").text()+'</li>'
                        
//                         +'<li><br>Description'+$(this).find("desc").text()+'</li>'
//                         +'<li><br>Due Date '+$(this).find("dueDate").text()+'</li>'
//                         +'<li><br>Comments '+$(this).find("comments").text()+'</li>'
//                         +'<li><br>Client Check In'+$(this).find("checkIn").text()+'</li>'
//                         +'<li><br>Status '+$(this).find("status").text()+'</li>';
// 					// end of sortingInfo var

// 				// add the sortingInfo to the div on the page
// 					if ($(this).find("ID").text()==currentID){
// 						$("#sortID").append(sortingInfo);
// 					};
// 				});
// 			} // end of xml func

// 		}); // end of ajax call

// 	}; // end of currentID func

// }); // end of doc ready func

$(document).ready(function() {
	'use strict';
	// always use strict so jquery works on multiple browsers
	
	$.ajax({
		url:"xml/progress.xml",
		cache: false,
		dataType: "xml",
		success: function(xml) {
			// empty div on the screen
			$("#myTable").empty();
			
			// find each record - friends
			$(xml).find("report").each(function() {
				// create the set of data using the fields in the xml field
				// below is how to concatinate in jQuery

                var info = 

                '<tr>'
                    +'<td>'+$(this).find("ID").text()+'</td>'    
                    +'<td>'+$(this).find("topic").text()+'</td>'    
                    +'<td>'+$(this).find("desc").text()+'</td>'
                    +'<td>'+$(this).find("dueDate").text()+'</td>'
                    +'<td>'+$(this).find("comments").text()+'</td>'
                    +'<td>'+$(this).find("checkIn").text()+'</td>'
                    +'<td><b>'+$(this).find("status").text()+'</b></td>'
                    +'<br>'
                +'</tr>'
                    
                ;
                // add info to the div on the page
				$("#myTable").append(info);
			});
		}
	});
});



function sortTable() {
    var table, rows, switching, i, x, y, shouldSwitch;
    table = document.getElementById("myTable");
    switching = true;
    /*Make a loop that will continue until no switching has been done:*/
    while (switching) {
      //start by saying: no switching is done:
      switching = false;
      rows = table.rows;
      /*Loop through all table rows (except the first, which contains table headers):*/
      for (i = 1; i < (rows.length - 1); i++) {
        //start by saying there should be no switching:
        shouldSwitch = false;
        /*Get the two elements you want to compare, one from current row and one from the next:*/
        x = rows[i].getElementsByTagName("TD")[0];
        y = rows[i + 1].getElementsByTagName("TD")[0];
        //check if the two rows should switch place:
        if (Number(x.innerHTML) > Number(y.innerHTML)) {
          //if so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      }
      if (shouldSwitch) {
        /*If a switch has been marked, make the switch and mark that a switch has been done:*/
        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        switching = true;
      }
    }
  }



