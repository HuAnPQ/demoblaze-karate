Feature: Obtener un usuario de reqres

  Scenario: Obtener un usuario
    Given url "https://reqres.in/" + "api/users/" + "2"
    When method get
    Then status 200