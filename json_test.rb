require 'pry-byebug' #easy debugging

null = 'no entry'
# json_object.keys => [:likelihood, :person, :status]
# json_object[:likelihood] => 9
# json_object[:person].keys
# json_object[:person][:basics][:name]


#test object taken from API to quickly test iterating-thru-results scripts

json_object = {
	"likelihood":9,

	"person":{
		"awards":[],
		"basics":{
			"additionalInfo":{},
			"aliases":[],
			"email":null,
			"emails":[],
			"industry":null,
			"location":null,
			"locations":[{
				"country-name":"United States",
				"locality":"Lexington",
				"region":"Kentucky"}],
			"name":"Amber Kilby","
			phone":null,
			"phoneNumbers":[],
			"photos":[],
			"picture":null,
			"profiles":[{
				"network":"linkedin",
				"url":"https://www.linkedin.com/in/amber-kilby-3600a683",
				"username":"/in/amber-kilby-3600a683"}],
				"summary":null,
				"tagline":null,
				"title":null,
				"url":null,
				"websites":[]},
			"certification":[],
			"education":[{
				"courses":[],
				"degree":null,
				"endDate":"2015",
				"exams":[],
				"gpa":null,
				"highlights":[],
				"institution":"Eastern Kentucky University",
				"location":null,
				"major":null,
				"startDate":"2013",
				"url":null}],
			"events":[],
			"experience":[],
			"interests":[],
			"languages":[],
			"organizations":[],
			"patents":[],
			"projects":[],
			"publications":[],
			"references":[],
			"skills":[],
			"volunteer":[]},
			"status":200
}


ruby_object = 

{"likelihood"=>10, 
	"person"=>{
		"awards"=>[], 
		"basics"=>{
		"additionalInfo"=>{}, 
		"aliases"=>[], 
		"email"=>nil, 
		"emails"=>[], 
		"industry"=>nil, 
		"location"=>nil, 
		"locations"=>[{
			"country-name"=>"United States", 
			"locality"=>"Lexington", 
			"region"=>"Kentucky"}], 

		"name"=>"Amber Kilby", 
		"phone"=>nil, 
		"phoneNumbers"=>[], 
		"photos"=>[], 
		"picture"=>nil, 
		"profiles"=>[
			{"network"=>"linkedin", 
			"url"=>"https://www.linkedin.com/in/amber-kilby-3600a683", 
			"username"=>"/in/amber-kilby-3600a683"}], 
			"summary"=>nil, 
			"tagline"=>nil, 
			"title"=>nil, 
			"url"=>nil, 
			"websites"=>[]}, 
		"certification"=>[], 
		"education"=>[{
			"courses"=>[], 
			"degree"=>nil, 
			"endDate"=>"2015", 
			"exams"=>[], 
			"gpa"=>nil, 
			"highlights"=>[], 
			"institution"=>"Eastern Kentucky University", 
			"location"=>nil, 
			"major"=>nil, 
			"startDate"=>"2013", 
			"url"=>nil}], 
			"events"=>[], 
			"experience"=>[], 
			"interests"=>[], 
			"languages"=>[], 
			"organizations"=>[], 
			"patents"=>[], 
			"projects"=>[], 
			"publications"=>[], 
			"references"=>[], 
			"skills"=>[],
			"volunteer"=>[]}, 
			"status"=>200}



# binding.pry
# puts json_object[:likelihood]
# puts json_object[:person][:basics][:name]

json_object[:person].each do |key, value|

	if 	value.kind_of?(Array)
		value.each do |k, v|
			print v
			print k, ":\n"
		end
	
	else

		print  key, ": " 
    	print  value, "\n"
   	end

end



