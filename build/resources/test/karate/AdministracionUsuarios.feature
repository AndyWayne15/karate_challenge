Feature: Administracion Usuarios

  @Crear
  Scenario: Crear un usuario
    Given url 'https://petstore.swagger.io/v2/user'
    And request {  "id": 100,  "username": "jperez",  "firstName": "Juan",  "lastName": "Perez",  "email": "jperez@demo.com",  "password": "1234567892",  "phone": "0987452414",  "userStatus": 0  }
    When method POST
    Then status 200
    And match $ contains {code:"#notnull"}
    And match $ contains {code:200,message:"100"}

  @Buscar
  Scenario: Buscar el usuario creado
    Given url 'https://petstore.swagger.io/v2/user/jperez'
    When method GET
    Then status 200
    And match $ contains {id:"#notnull"}
    And match $ contains {"id": 100, "username": "jperez", "firstName": "Juan", "lastName": "Perez", "email": "jperez@demo.com",  "password": "1234567892",  "phone": "0987452414",  "userStatus": 0 }

  @Actualizar
  Scenario: Actualizar el nombre y el correo del usuario
    Given url 'https://petstore.swagger.io/v2/user/jperez'
    And request {  "id": 202020,  "username": "hprez",  "firstName": "Hernan",  "lastName": "Perez",  "email": "hperez@demo.com",  "password": "1234567892",  "phone": "0987452414" ,"userStatus": 0 }
    When method PUT
    Then status 200
    And match $ contains {code:"#notnull"}
    And match $ contains {code:200}

  @BuscarActualizado
  Scenario: Buscar el usuario actualizado
    Given url 'https://petstore.swagger.io/v2/user/hprez'
    When method GET
    Then status 200
    And match $ contains {id:"#notnull"}
    And match $ contains {"id": 202020, "username": "hprez", "firstName": "Hernan", "lastName": "Perez", "email": "hperez@demo.com",  "password": "1234567892",  "phone": "0987452414",  "userStatus": 0}

  @Eliminar
  Scenario: Eliminar el usuario
    Given url 'https://petstore.swagger.io/v2/user/hprez'
    When method DELETE
    Then status 200
    And match $ contains {code:"#notnull"}
    And match $ contains {code:200,message:"hprez"}