require 'json'

Then(/^the response should be "([^"]*)"$/) do |code|
  if code != @response_code
    fail
  end
end

Then(/^the response body should be$/) do |body|
  parsedBody = JSON.parse(body)
  parsedResponseBody = JSON.parse(@response_body)
  if parsedBody != parsedResponseBody
    fail
  end
end
