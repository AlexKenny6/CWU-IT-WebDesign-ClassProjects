google.charts.load('current', { 
    packages: ['corechart']
});

google.charts.setOnLoadCallback(drawChart);

    //setup and draws two charts
    function drawChart() {
        // create inventory by game
        // converts array from program into a form for the chart
		var gameString = "[";
		for (var i=0; i<games.length; i++) {
            gameString += "['"+games[i].game+"',"+games[i].amount+"],";
        }
		gameString = gameString.substring(0, gameString.length-1)+"]";
		// create data for chart
		var data = new google.visualization.DataTable();
        data.addColumn('string', 'Inventory by Game');
        data.addColumn('number', 'In stock:');
		data.addRows(eval(gameString));

        // set chart options
        var options = {
            'title':'Inventory by Game',
            'width':400,
            'height':300
        };

        // chart one
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);

        
		var typeString = "";
		var countShooter= 0;
		var countSports = 0;
		var countRPG = 0;
		var countBR = 0;
		// 
		for (var i=0; i<games.length; i++) { 	  
		    switch(games[i].type) {
                case "Shooter":
                    countShooter++;
                    break;
                case "Sports":
                    countSports++;
                    break;
                case "RPG":
                    countRPG++;
                    break;
                case "BR":
                    countBR++;
		    }
		}
		var typeString="[['Shooters',"+countShooter+"],['RPG',"+countRPG+"],['Sports',"+countSports+"],['BR',"+countBR+"]]";

		// create data
  		var data = new google.visualization.DataTable();
        data.addColumn('string', 'Inventory by Game');
        data.addColumn('number', 'In stock:');
        data.addRows(eval(typeString));
		
        // chart options
        var options = {
            'title':'Inventory by Type',
            'width':400,
            'height':300
        };

        // chart num 2
        var chart = new google.visualization.PieChart(document.getElementById('chart_div2'));
        chart.draw(data, options);	
        
      }


    // declare variables
    
    var a = document.getElementById("answer");
    
    var games = [];
    
    var selectType = document.getElementById('dropType');
    
    var gameText = document.getElementById('inputGame');
    
    var amountText = document.getElementById('inputQuantity');
    
    var sortBy = "Type"
    
    iTitle=document.getElementById('inventoryTitle');
    
    iTitle.innerHTML="Current Inventory (unsorted):";

    // constructors
    function Game(type, game, amount) {	

        this.type = type;
        this.game = game;
        this.amount = amount;

    }
 
    function getFromForm() {    

            var formType = dropType.value;
            var formGame = gameText.value.substr(0,1).toUpperCase() + gameText.value.substr(1).toLowerCase();
            var formAmount = Number(amountText.value);
            for (var i=0; i<games.length; i++) {

                if((games[i].game == formGame) && (games[i].type == formType)) {

                    games.splice(i,1);

                }

            }
                if (formAmount !=0) {

                    var newGame = new Game(formType,formGame,formAmount);
                    games.push(newGame);
                    // Sort the array by Type, but do game first
                    games.sort(sortByGame)
                    games.sort(sortByType);
    
                }

                selectType.options[0].selected = true;
                gameText.value = "";
                amountText.value = "";
                displayList();
                drawChart();

            }

    function typeSort() {

        sortBy= "Type";
        iTitle.innerHTML="Current Inventory sorted by Type:"
        games.sort(sortByGame);
        games.sort(sortByType);
        displayList();

    }
      
    function gameSort() {

        sortBy= "Game";
        iTitle.innerHTML="Current Inventory sorted by Game:"
        games.sort(sortByType);
        games.sort(sortByGame);
        displayList();

    }

    function amountSort() {

        sortBy="Amount";
        iTitle.innerHTML="Current Inventory sorted by Quantity:"
        games.sort(sortByType);
        games.sort(sortByAmount);	
        displayList();
        
    }

    // sort by type
    function sortByType(game1, game2) {

            if(game1.type > game2.type) { 
                return 1;
            }
            else if (game1.type === game2.type){ 
                return 0;
            }
            else { 
                return -1;
            }

        }
    // sort by game
    function sortByGame(game1, game2) {

            if(game1.game > game2.game) { 
                return 1;
            }
            else if (game1.game === game2.game){ 
                return 0;
            }
            else { 
                return -1;
            }

        }

    // sort by quantity
    function sortByAmount(game1, game2) {

            if(game1.amount > game2.amount) { 
                return 1;
            }
            else if (game1.amount === game2.amount){ 
                return 0;
            }
            else { 
                return -1;
            }

        }

    function displayList() {

            a.innerHTML="";
            switch (sortBy) {
                case "Type":
                a.innerHTML +='<div class=tabtitle>Type</div><div class=tabtitle>Game</div><div class=tabtitle>Amount</div><div class=clearIt><br>';
                break;
                    
                case "Game":
                a.innerHTML +='<div class=tabtitle>Game</div><div class=tabtitle>Type</div><div class=tabtitle>Amount</div><div class=clearIt><br>';
                break;
                    
                case "Amount":
                a.innerHTML +='<div class=tabtitle>Amount</div><div class=tabtitle>Type</div><div class=tabtitle>Game</div><div class=clearIt><br>';
                break;
            }

            for (var i=0; i<games.length; i++) {

                switch (sortBy) {
                    case "Type": { 
                        a.innerHTML +='<div class=tabs>'+games[i].type +'</div><div class=tabs>'+games[i].game +'</div><div class=tabs>'+games[i].amount +'</div><div class=tabs><input type="button" name='+i+' value="Delete All" onClick="deleteAll(name)"><input type="button" name='+i+' value="Delete One" onClick="deleteOne(name)"></div><div class=clearIt>';
                        // Sort the array
                        games.sort(sortByType);
                    }
                    break;
                            
                    case "Game": {
                        a.innerHTML +='<div class=tabs>'+games[i].game +'</div><div class=tabs>'+games[i].type +'</div><div class=tabs>'+games[i].amount +'</div><div class=tabs><input type="button" name='+i+' value="Delete All" onClick="deleteAll(name)"><input type="button" name='+i+' value="Delete One" onClick="deleteOne(name)"><div class=clearIt>';
                        // Sort the array
                        games.sort(sortByGame);
                    }
                    break;
                
                    case "Amount": {
                        a.innerHTML +='<div class=tabs>'+games[i].amount +'</div><div class=tabs>'+games[i].type +'</div><div class=tabs>'+games[i].game +'</div><div class=tabs><input type="button" name='+i+' value="Delete All" onClick="deleteAll(name)"><input type="button" name='+i+' value="Delete One" onClick="deleteOne(name)"><div class=clearIt>';
                        // Sort the array
                        games.sort(sortByAmount);
                    }
                    break;

                }
            }
        }

    function deleteAll(which) {

            games.splice(which,1);
            typeSort();
            displayList();
            drawChart();

        }
    function deleteOne(which) {

        if(games[which].amount >1) {

            games[which].amount = games[which].amount-1;
            //amountSort();
            displayList();
            drawChart();

        }
        else {
            deleteAll(which);
        }
    }
