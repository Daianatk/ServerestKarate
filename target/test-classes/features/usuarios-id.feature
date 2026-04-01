Feature: Buscar usuario por ID

Scenario: Obtener usuario existente
  * def id = '0RyPANPFT8dHK6KL'
  Given url 'https://serverest.dev/usuarios'
  And path id
  When method get
  Then status 200
  And match response.nome == '#string'
