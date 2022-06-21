Feature: Actualizar un usuario de reqres

  Scenario: Actualizar un usuario
    Given url "https://reqres.in/" + "api/users/" + "2"
    And request { "name": "Viviana", "job": "zion resident" }
    When method put
    Then status 200
    And match $.name == "Viviana"