Feature: Listar usuarios

Scenario: Obtener lista de usuarios
  Given url 'https://serverest.dev/usuarios'
  When method get
  Then status 200
  And match response.usuarios == '#[]'
