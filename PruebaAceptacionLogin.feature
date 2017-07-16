Feature: Iniciar sesion en la pagina web: www.linkedin.com 

  Scenario: Inicio de sesion exitoso con credenciales validas
    Given  soy un usuario registrado y estoy en la pagina de inicio se sesion del portal web: www.linkedin.com
    When   relleno el correo electronico "<login-email>",  y la contraseña "<login-password>"
    And    preciono el boton inicia sesion "<login-submit>"
    Then   pagina web www.linkedin.com asegura que soy un usuario registrado 
	AND    muestra mi perfil
	
	Scenario: Inicio de sesion no exitoso con  correo electronico valido y contraseña invalida
    Given     soy un usuario registrado estoy en la pagina de inicio se sesion del portal web: www.linkedin.com
    When      relleno el correo electronico "<login-email>",  y la contraseña "<login-password>"
    And       preciono el boton inicia sesion "<login-submit>"
    Then      la pagina web www.linkedin.com muestra el siguiente mensaje: 
	          "Vaya, esa no es la contraseña correcta. Prueba de nuevo o solicita una nueva".
	

   Scenario: Inicio de sesion no exitoso con correo electronico invalido y cotraseña invalida
    Given  soy un usuario no registrado, y estoy en la pagina de inicio se sesion del portal web: www.linkedin.com
    When   relleno el correo electronico "<login-email>",  y la contraseña "<login-password>"
    And    preciono el boton inicia sesion "<login-submit>"
    Then   la pagina web www.linkedin.com muestra el mensaje: 
	       "Vaya no reconocemos esa direccion de correo electronico.Vuelva intentarlo"
	
	

    