Feature: Registrar usuario

Scenario: Crear usuario válido
  Given url 'https://serverest.dev/usuarios'
  And request { nome: 'MariaM', email: 'maria.m@test.com', password: 'tests123', administrador: 'true' }
  When method post
  Then status 201
  And match response.message == "Cadastro realizado com sucesso"
  And match response._id == '#string'