		var Observable = require("FuseJS/Observable");		
		var ROOT_URL = "https://openapi.naver.com/v1/search/news.json?query=";
		var InterApp = require("FuseJS/InterApp");
		var token = Observable();


		this.onParameterChanged(function(param) {
		    console.log("param1: " + JSON.stringify(param));

		    load(param);
    	});

		
		var e = Observable();
		var SearchTextJS = Observable(); 
		function onValueChanged()
		{
			
			load(SearchTextJS.value);

		}

		function load(keyword){
			
			var status = 0;
			var response_ok = false;
			

			
			var url = encodeURI(ROOT_URL + keyword);
			console.log(url);
			fetch(url, {
			    method: 'GET',
			    headers: {
				"X-Naver-Client-Id": "RYtNojGC2gQG0EW42G6z",
				"X-Naver-Client-Secret": "mEXxVBRnLe"} 
			     
			}).then(function(response) {
			    status = response.status;  // Get the HTTP status code
			    response_ok = response.ok; // Is response.status in the 200-range?
			    
			    return response.json();    // This returns a promise
			}).then(function(responseObject) {
				//console.log(e.value);
				e.clear();
				for(var i=0; i<responseObject.items.length;i++) {
					e.add(responseObject.items[i]); 	
				}
				//e.remove(1);
				//console.log(JSON.stringify(e.value)); 

				
			    // Do something with the result
			}).catch(function(err) {
				
			    // An error occurred somewhere in the Promise chain
			});
 
	  
			}
		function OnEventCardClick(arg)
		{
			console.log(JSON.stringify(arg.data.originallink));
			InterApp.launchUri(arg.data.originallink);	
		}			
		module.exports = {
			gomain: function() { router.goBack();},
			eventsValue: e,
			onValueChanged:onValueChanged,
			SearchTextJS:SearchTextJS,
			OnEventCardClick:OnEventCardClick,
			gologin: function() { router.goto("loginpage");}
			
		}

			
		