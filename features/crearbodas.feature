Feature: bodas

  Scenario: crear boda de Janet and German correctamente
    When I make PUT request to "/es/api/v1/crearbodas" with body
    """
    {"Nombre marido":"German",
    "Nombre mujer":"Janet",
    "Fecha": "12-03-2015"}
    """
    Then the response should be "201"
    And the response body should be
    """
    {"numero de boda":1}
    """
