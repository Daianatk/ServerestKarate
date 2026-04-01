Feature: Actualizar usuario

Scenario: Actualizar datos de usuario
  * def id = '0uxuPY0cbmQhpEz1'
  Given url 'https://serverest.dev/usuarios'
  And path id
  And request { nome: 'Carlos da Silva', email: 'carlos.s@qa.com.pe', password: 'teste', administrador: 'true' }
  When method put
  Then status 200
  And match response.message == "Registro alterado com sucesso"
