Feature: Crear un usuario de reqres

  Scenario: Crear un usuario
    Given url "https://reqres.in/" + "api/users/"
    And request { "name": "morpheus", "job": "leader" }
    When method post
    Then status 201