require 'json'
require 'rspec'

Then(/^the response should be "([^"]*)"$/) do |code|
  @response_code.should == code
end

Then(/^the response body should be$/) do |body|
  parsedBody = JSON.parse(body)
  parsedResponseBody = JSON.parse(@response_body)
  parsedResponseBody.should == parsedBody
end
