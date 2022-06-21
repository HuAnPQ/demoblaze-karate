Feature: Obtener un usuario de reqres

  Scenario: Obtener un usuario
    Given url "https://reqres.in/" + "api/users/" + "2"
    When method get
    Then status 200

    Scenario: Obtener lista de usuarios
      * def jsonRespuesta = read("../json/lista-usuarios.json")
      Given url "https://reqres.in/api/users?page=2"
      When method get
      Then status 200
      And match $ == jsonRespuesta