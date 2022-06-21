Feature: Crear un usuario de reqres

  Background:
    * url "https://reqres.in/"
    * path "api/users/"
    * request { "name": "#(name)", "job": "#(job)" }

  Scenario Outline: Crear un usuario
    When method post
    Then status 201

    Examples:
    |name|job|
    |Hugo|Conductor|
    |Juan|Pintor|
    |Luis|Actor|
    |Omar|Chef|

  Scenario: Crear un usuario sin trabajo
    And request { "name": "Alberto" }
    When method post
    Then status 201