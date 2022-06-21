Feature: Eliminar un usuario de reqres

  Scenario: Eliminar un usuario
    * call read("../post/usuarios-post.feature@CrearUsuario")
    Given url "https://reqres.in/" + "api/users/" + idUsuario
    When method delete
    Then status 204