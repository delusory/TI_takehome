#GOAL OF EXERCISE: Search through a CSV of potential profiles. Display results in a new CSV. 

require 'httparty' #rubygem for easy requests
require 'pry-byebug' #easy debugging


#load data, make into array to make an easy multiple search

$search_array = Array.new #making a global variable to take in between functions

$sample_array = ["Tory Adams"]

def create_list(file)
  CSV.foreach(file) do |row|
    $search_array << row[0]
  end
  $search_array.shift #removes "name" header
  return $search_array
end


# All requests to the API must use POST and send a JSON body specifying the terms to be used in the request. 

def api_request(name) 
	response = HTTParty.post('https://api.talentiq.co/v2/person', 
    :body => {:name => name }.to_json,
    :headers => { 'Content-Type' => 'application/json', 
    			'x-api-key:' => 'e058cdd334c69c31d45d87e44b405d128a9e8937939e7d0ab2496334',
          'Accept' => 'application/json' })
  puts response.body
end 



api_request("Tory Adams")



def search_list(list_name) #search through array of names, save responses
    list_name.each do |name|
    result = api_request(name).body
    CSV.open("result.csv", "wb") do |csv|
      csv.each do |item| 
        csv << item
      end
    end
  end
end



# create_list("sample_data.csv")


# search_list($sample_array)


#   hash.each do |item| 
#     csv << item
#   end

# end




 #open new file for write

# CSV.open("your_csv.csv", "w") do |csv|

#   JSON.parse(regular_response).each do |hash| 
#     csv << hash

#   end
# end


# CSV.open("result.csv", "wb") do |csv|
# 	response('Amber Kilby').to_csv
# end