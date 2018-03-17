require 'sinatra'
require 'net/http'
require 'json'
require 'openssl'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

def get_search_count(term)
	url = "https://www.udemy.com/api-2.0/search-suggestions?q=#{term}"
	uri = URI(url)
	response = Net::HTTP.get(uri)
	udemy_hash = JSON.parse(response)
	return udemy_hash["results"][0]["searched_count"]
end


get '/' do
	if params["term"] && !params["term"].empty?
		count = get_search_count(params["term"])
		return "#{params['term']}: #{count}"
	elsif params["term"] && params["term"].empty?
		return "Error: Search Term Empty"
	else
		return "Error: No Search Term Provided"
	end
end

