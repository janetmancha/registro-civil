Feature: heartbeat

  Scenario: heartbeat returns ok
    When I make GET request to "/es/api/v1/heartbeat"
    Then the response should be "200"
