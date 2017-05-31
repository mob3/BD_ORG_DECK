/*
 * Queries the sharpoint server for the information that will be displayed in the boxes and then add it to the viewModel. 
 */
 
define(['ko'], function(ko) {
	console.log("Starting Load Pages");
	
	/*
	 * Contains all the infromation on the boxes that will applied to the page.
	 * If a box is added then a new entry must be added. Each box is unique as it has 
	 * a unique location on the layout. 
	 */
	var viewModel = {
		models : {
			box1 : {},
			box2 : {},
			box3 : {},
			box4 : {},
			box5 : {},
			box6 : {},
			box7 : {},
			box8 : {},
			box9 : {},
			box10 : {},
			box11 : {},
			box12 : {},
			box13 : {},
			box14 : {},
			box15 : {},
			box16 : {},
			box17 : {},
			box18 : {},
			box19 : {},
			box20 : {},
			box21 : {},
			box22 : {},
			box23 : {},
			box24 : {},
			box25 : {},
			box26 : {},
			box27 : {},
			box28 : {},
			box29 : {},
			title1 : {},
			title2 : {},
			title3 : {},
			title4 : {},
			title5 : {},
			title6 : {},
			box30 : {},
			box31: {},
			box32 : {},
			box33 : {},
			box34 : {},
			box35: {},
			box36 : {},
			box37 : {},
			box38 : {},
			box39 : {},
			box40 : {},
			box41 : {},
			box42 : {},
			box43 : {},
			box44 : {},
			box45 : {},
			box46 : {},
			box47 : {},
			box48 : {},
			box49 : {},
			box50 : {},
			box51: {},
			box52 : {},
			box53 : {},
			box54 : {},
			box55: {},
			box56 : {},
			box57 : {},
			box58 : {},
			box59 : {},
			title7 : {},
			title8 : {},
			title9 : {},
			title10 : {},
			title11 : {},
			title12 : {}
		},
		page : ko.observable(true),
		changePage : function() {
			var prev = this.page();
			console.log(!prev);
			this.page(!prev);
		}
	}
	
	
	//The query for the SharePoint Site. Change the listName if the list name is changed on sharpoint.
	var listName = "Deck";
    var endpoint = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/GetByTitle('" + listName + "')/"
		+ "items?$select=ID,Title,box_text,hover_text,links"; 
	console.log(endpoint);
	
	//Get the data from sharePoint.
	var post = $.ajax({
        url: endpoint,
        type: "GET",
  		dataType: "json",
        headers: {
            "X-RequestDigest": $("#__REQUESTDIGEST").val(),
            "Accept": "application/json; odata=verbose",
            "Content-Type": "application/json; odata=verbose"
        },
    })
	post.then( function(data, textStatus, jqXHR) {
		/*
		 * Given a data entry in the query parse out the box text, hover text.
		 * Parse the links and split them up. Return a box to be added to the view model.
		 */
		var box = function(data) {
			console.log(data);
			var self = this;
			self.box = ko.observable(data.box_text);
			self.hover = ko.observable(data.hover_text);
			self.links = ko.observableArray();
			
			//Function to build each link.
			var link = function(name, url) {
				this.name = name;
				this.url = url;
				
			}
			
			//For each link split at the ';' and then build the link object.
			$.each(data.links.split("\n"), function(key, val) {
				console.log(key + " : " + val);
				var split = val.split(";");
				var newlink =  new link(split[0], split[1]);
				self.links.push(newlink);
			});
		}
		
		//Shared Boxes between the two pages.
		viewModel.models.box3 = new box(data.d.results[2]);
		viewModel.models.box4 = new box(data.d.results[3]);
		viewModel.models.box5 = new box(data.d.results[4]);
		viewModel.models.box11 = new box(data.d.results[10]);
		viewModel.models.box14 = new box(data.d.results[13]);
		viewModel.models.title5 = new box(data.d.results[33]);
		viewModel.models.title6 = new box(data.d.results[34]);

		//Boxes for page 1.
		viewModel.models.box1 = new box(data.d.results[0]);
		viewModel.models.box2 = new box(data.d.results[1]);
		viewModel.models.box6 = new box(data.d.results[5]);
		viewModel.models.box7 = new box(data.d.results[6]);
		viewModel.models.box8 = new box(data.d.results[7]);
		viewModel.models.box9 = new box(data.d.results[8]);
		viewModel.models.box10 = new box(data.d.results[9]);
		viewModel.models.box12 = new box(data.d.results[11]);
		viewModel.models.box13 = new box(data.d.results[12]);
		viewModel.models.box15 = new box(data.d.results[14]);
		viewModel.models.box16 = new box(data.d.results[15]);
		viewModel.models.box17 = new box(data.d.results[16]);
		viewModel.models.box18 = new box(data.d.results[17]);
		viewModel.models.box19 = new box(data.d.results[18]);
		viewModel.models.box20 = new box(data.d.results[19]);
		viewModel.models.box21 = new box(data.d.results[20]);
		viewModel.models.box22 = new box(data.d.results[21]);
		viewModel.models.box23 = new box(data.d.results[22]);
		viewModel.models.box24 = new box(data.d.results[23]);
		viewModel.models.box25 = new box(data.d.results[24]);
		viewModel.models.box26 = new box(data.d.results[25]);
		viewModel.models.box27 = new box(data.d.results[26]);
		viewModel.models.box28 = new box(data.d.results[27]);
		viewModel.models.box29 = new box(data.d.results[28]);
		
		//Titles for Page 1.
		viewModel.models.title1 = new box(data.d.results[29]);
		viewModel.models.title2 = new box(data.d.results[30]);
		viewModel.models.title3 = new box(data.d.results[31]);
		viewModel.models.title4 = new box(data.d.results[32]);
		
		//Boxes for Page 2.
		viewModel.models.box30 = new box(data.d.results[35]);
		viewModel.models.box31 = new box(data.d.results[36]);
		viewModel.models.box32 = new box(data.d.results[37]);
		viewModel.models.box33 = new box(data.d.results[38]);
		viewModel.models.box34 = new box(data.d.results[39]);
		viewModel.models.box35 = new box(data.d.results[40]);
		viewModel.models.box36 = new box(data.d.results[41]);
		viewModel.models.box37 = new box(data.d.results[42]);
		viewModel.models.box38 = new box(data.d.results[43]);
		viewModel.models.box39 = new box(data.d.results[44]);
		viewModel.models.box40 = new box(data.d.results[45]);
		viewModel.models.box41 = new box(data.d.results[46]);
		viewModel.models.box42 = new box(data.d.results[47]);
		viewModel.models.box43 = new box(data.d.results[48]);
		viewModel.models.box44 = new box(data.d.results[49]);
		viewModel.models.box45 = new box(data.d.results[50]);
		viewModel.models.box46 = new box(data.d.results[51]);
		viewModel.models.box47 = new box(data.d.results[52]);
		viewModel.models.box48 = new box(data.d.results[53]);
		viewModel.models.box49 = new box(data.d.results[54]);
		viewModel.models.box50 = new box(data.d.results[55]);
		viewModel.models.box51 = new box(data.d.results[56]);
		viewModel.models.box52 = new box(data.d.results[57]);
		viewModel.models.box53 = new box(data.d.results[58]);
		viewModel.models.box54 = new box(data.d.results[59]);
		viewModel.models.box55 = new box(data.d.results[60]);
		viewModel.models.box56 = new box(data.d.results[61]);
		viewModel.models.box57 = new box(data.d.results[62]);
		viewModel.models.box58 = new box(data.d.results[63]);
		viewModel.models.box59 = new box(data.d.results[64]);
		
		//Titles for Page 2.
		viewModel.models.title7 = new box(data.d.results[65]);
		viewModel.models.title8 = new box(data.d.results[66]);
		viewModel.models.title9 = new box(data.d.results[67]);
		viewModel.models.title10 = new box(data.d.results[68]);
		viewModel.models.title11 = new box(data.d.results[69]);
		viewModel.models.title12 = new box(data.d.results[70]);

		ko.applyBindings(viewModel);
	});
	post.fail( function() {
		console.log("Post Failed");
	});
 });