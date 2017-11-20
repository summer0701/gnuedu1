		var Observable = require("FuseJS/Observable");		
		var ROOT_URL = "https://openapi.naver.com/v1/search/news.json?query=";
		var InterApp = require("FuseJS/InterApp");
		var token = Observable();


		this.onParameterChanged(function(param) {
		    console.log("param1: " + JSON.stringify(param));

		    loadNaver(param);
    	});

		
		var e = Observable();
		var SearchTextJS = Observable(); 
		function onValueChanged()
		{
			
			loadNaver(SearchTextJS.value);

		}
		function loadNaver(keyword){
			
			var status = 0;
			var response_ok = false;
			

			
			var url = encodeURI(ROOT_URL + keyword);
			console.log(url);
			fetch(url, {
			    method: 'GET',
			    headers: {
				"X-Naver-Client-Id": "RYtNojGC2gQG0EW42G6z",
				"X-Naver-Client-Secret": "83mpaCTG7L"} 
			     
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
		function load(keyword){
			
			var status = 0;
			var response_ok = false;
			

			var urlsub = "https%3A%2F%2Fnews.google.com%2Fnews%2Frss%2Fheadlines%2Fsection%2Ftopic%2FSPORTS.ko_kr%2F%EC%8A%A4%ED%8F%AC%EC%B8%A0%3Fned%3Dkr%26hl%3Dko";
			if(keyword =="스포츠") {
				urlsub = "https%3A%2F%2Fnews.google.com%2Fnews%2Frss%2Fheadlines%2Fsection%2Ftopic%2FSPORTS.ko_kr%2F%EC%8A%A4%ED%8F%AC%EC%B8%A0%3Fned%3Dkr%26hl%3Dko";
			}else if(keyword =="경제") {
				urlsub = "https%3A%2F%2Fnews.google.com%2Fnews%2Fu%2F1%2Frss%2Fheadlines%2Fsection%2Ftopic%2FBUSINESS.ko_kr%2F%25EA%25B2%25BD%25EC%25A0%259C%3Fned%3Dkr%26amp%3Bauthuser%3D1%26hl%3Dko%26gl%3DKR";
			}else if(keyword =="문화") {
				urlsub = "https%3A%2F%2Fnews.google.com%2Fnews%2Fu%2F1%2Frss%2Fheadlines%2Fsection%2Ftopic%2FENTERTAINMENT.ko_kr%2F%25EC%2597%25B0%25EC%2598%2588%3Fned%3Dkr%26amp%3Bauthuser%3D1%26hl%3Dko%26gl%3DKR";
			}else if(keyword =="IT") {
				urlsub = "https%3A%2F%2Fnews.google.com%2Fnews%2Fu%2F1%2Frss%2Fheadlines%2Fsection%2Ftopic%2FSCITECH.ko_kr%2F%25EA%25B3%25BC%25ED%2595%2599%25EA%25B8%25B0%25EC%2588%25A0%3Fned%3Dkr%26amp%3Bauthuser%3D1%26hl%3Dko%26gl%3DKR";
			}else{
				loadNaver(keyword);
				return;

			}
			

			var url = "https://api.rss2json.com/v1/api.json?rss_url="+urlsub+"&api_key=a6thfhv2ngviiop4zksqugkedhfqfke3hbtqyo5h&_=1510204745681";
			//console.log(url);
			fetch(url, {
				method: 'GET',
			
				
			     
			}).then(function(response) {
			    status = response.status;  // Get the HTTP status code
			    response_ok = response.ok; // Is response.status in the 200-range?
			  
			    return response.json();    // This returns a promise
			}).then(function(responseObject) {
				//console.log(e.value);
				//console.log(JSON.stringify(responseObject));
				var regExString = /(<([^>]+)>)/ig;
				e.clear();
				for(var i=0; i<responseObject.items.length;i++) {
					//contentString = responseObject.items[i].replace(regExString, "");
		
					//console.log(responseObject.items[i].description);
					responseObject.items[i].description = responseObject.items[i].description.replace(regExString, "");
					
					
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
			console.log(JSON.stringify(arg.data.link));
			InterApp.launchUri(arg.data.link);	
		}			
		module.exports = {
			gomain: function() { router.goBack();},
			eventsValue: e,
			onValueChanged:onValueChanged,
			SearchTextJS:SearchTextJS,
			OnEventCardClick:OnEventCardClick,
			goback: function() { router.goto("categorypage");}
			
		}

			
		