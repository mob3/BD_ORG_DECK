 define(['ko'], function(ko) {
	console.log("Starting Load Pages");
	
	var viewModel = {
		models : {
			test1 : {
				box : ko.observable(),
				hover : ko.observable(),
				links : ko.observable()
			},
			test2 : {
				box : ko.observable(),
				hover : ko.observable(),
				links : ko.observable()
			},
			test3 : {
				box : ko.observable(),
				hover : ko.observable(),
				links : ko.observable()
			}
		}
	}
	
	
	
	var listName = "org_deck_list";
    var endpoint = _spPageContextInfo.webAbsoluteUrl + "/_api/web/lists/GetByTitle('" + listName + "')/"
		+ "items?$select=ID,Title,box_text,hover_text,links"; 

	console.log(endpoint);
	
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
		console.log(data);

		viewModel.models.test1.box(data.d.results[0].box_text);
		viewModel.models.test1.hover(data.d.results[0].hover_text);
		viewModel.models.test1.links(data.d.results[0].links);
		viewModel.models.test2.box(data.d.results[1].box_text);
		viewModel.models.test2.hover(data.d.results[1].hover_text);
		viewModel.models.test2.links(data.d.results[1].links);
		viewModel.models.test3.box(data.d.results[2].box_text);
		viewModel.models.test3.hover(data.d.results[2].hover_text);
		viewModel.models.test3.links(data.d.results[2].links);

		//self.test2.box = data.d.results[1].box_text;
		//self.test2.box = data.d.results[1].hover_text;
		//self.test2.links = data.d.results[0].links;
		
		//console.log(viewModel);
		//console.log(self.test1);
		ko.applyBindings(viewModel);
	});
	post.fail( function() {
		console.log("Post Failed");
	});
	
 });