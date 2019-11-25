return fetch('https://gateway-lon.watsonplatform.net/discovery/api/v1/environments/system/collections/news-en/query?version=2018-12-03&deduplicate=false&highlight=true&passages=true&passages.count=5&natural_language_query=weather', 
             {
  headers:
             {
 'Content-Type': 'application/json',
 'Accept': 'application/json',
 'Authorization': 'Basic YXBpa2V5Oncxclk0aFdaZUZvZUgzLVc4TXBrUV9ManVqSGJsLVh3OHBlRW9BU0lLVzNI' 

 },
 method: 'GET' 
             
  
})
    .then(function(res) {
        return res.json();
    }).then(function(json) {
        return json.results[0].text;
 
  //console.log(json);
});
