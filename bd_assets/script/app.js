requirejs.config({
    //Load any module IDs from js/lib
    //except, if the module ID starts with "app",
    //load it from the js/app directory. paths
    //config is relative to the baseUrl, and
    //never includes a ".js" extension since
    //the paths config could be for a directory.
	baseUrl: "../bd_assets/script",
    paths: {
		app: "."
		,"jquery": "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.3"
		,"ko": "knockout-3.4.2"
    }
});

// Load the main app module to start the app
requirejs(["app/loadPage"], function(loadPage) {
	console.log("Require Loaded");
});
