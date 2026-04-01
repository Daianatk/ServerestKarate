Feature: Eliminar usuario

Scenario: Borrar usuario existente
  * def id = '1M4EQI1PwWkoJ5WZ'
  Given url 'https://serverest.dev/usuarios'
  And path id
  When method delete
  Then status 200
  And match response.message == "Registro excluído com sucesso"