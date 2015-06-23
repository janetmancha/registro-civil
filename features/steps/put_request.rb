
require 'net/http'

When(/^I make PUT request to "([^"]*)" with body$/) do |location, body|
  http = Net::HTTP.new('localhost', 8882)
  response = http.put(location, body, initheader = {'content-type' => 'application/json'})
  @response_code = response.code
  @response_body = response.body
end
