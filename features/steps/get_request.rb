require 'net/http'

When(/^I make GET request to "([^"]*)"$/) do |location|
  http = Net::HTTP.new('localhost', 8882)
  response = http.get(location)
  @response_code = response.code
  @response_body = response.body
end
