require 'net/http'
require 'json'

responseCode = -1
responseBody = ''

When(/^I make PUT request to "([^"]*)" with body$/) do |location, body|
  http = Net::HTTP.new('localhost', 8882)
  response = http.put(location, body, initheader = {'content-type' => 'application/json'})
  responseCode = response.code
  responseBody = response.body
end

When(/^I make GET request to "([^"]*)"$/) do |location|
  http = Net::HTTP.new('localhost', 8882)
  response = http.get(location)
  responseCode = response.code
  responseBody = response.body
end

Then(/^the response should be "([^"]*)"$/) do |code|
  if code != responseCode
    fail
  end
end

Then(/^the response body should be$/) do |body|
  parsedBody = JSON.parse(body)
  parsedResponseBody = JSON.parse(responseBody)
  if parsedBody != parsedResponseBody
    fail
  end
end

When(/^I make POST request to "([^"]*)" with body$/) do |location, body|
  http = Net::HTTP.new('localhost', 8882)
  response = http.post(location, body, initheader = {'content-type' => 'application/json'})
  responseCode = response.code
  responseBody = response.body
end

When(/^I make DELETE request to "([^"]*)"$/) do |location|
  http = Net::HTTP.new('localhost', 8882)
  response = http.delete(location)
  responseCode = response.code
end
