require 'net/http'

When(/^I make DELETE request to "([^"]*)"$/) do |location|
  http = Net::HTTP.new('localhost', 8882)
  response = http.delete(location)
  @response_code = response.code
end
