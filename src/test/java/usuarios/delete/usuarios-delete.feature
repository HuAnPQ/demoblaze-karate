Feature: Eliminar un usuario de reqres

  Scenario: Eliminar un usuario
    Given url "https://reqres.in/" + "api/users/" + "2"
    When method delete
    Then status 204