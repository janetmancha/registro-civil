Feature: personas

  Scenario: crear persona Janet correctamente
    When I make PUT request to "/es/api/v1/personas" with body
    """
    {"Nombre":"Janet",
    "Fecha Nacimiento":"04-01-1980",
    "Estado Civil": "Soltera"}
    """
    Then the response should be "201"

  Scenario: obtener datos persona Janet correctamente
    When I make GET request to "/es/api/v1/personas/Janet"
    Then the response should be "200"
    And the response body should be
    """
    {"Fecha Nacimiento":"04-01-1980","Estado Civil": "Soltera"}
    """

  Scenario: obtener datos persona German correctamente
    When I make GET request to "/es/api/v1/personas/German"
    Then the response should be "200"
    And the response body should be
    """
    {"Fecha Nacimiento":"29-08-1980","Estado Civil": "Soltero"}
    """

  Scenario: obtener datos persona no existente
    When I make GET request to "/es/api/v1/personas/Pepito"
    Then the response should be "404"

  Scenario: modificar datos persona Janet correctamente
    When I make POST request to "/es/api/v1/personas/Janet" with body
    """
    {"Estado Civil": "Casada"}
    """
    Then the response should be "200"

  Scenario: borrar persona Janet correctamente
    When I make DELETE request to "/es/api/v1/personas/Janet"
    Then the response should be "200"
