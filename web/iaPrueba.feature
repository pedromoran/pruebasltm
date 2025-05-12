Feature: Recargas SOS

Sin saldo

	Scenario: Solicitud de recarga SOS exitosa  
		Given que el usuario se encuentra en el portal de autogestión  
		When selecciona la opción "Recarga SOS" e ingresa su número telefónico  
		Then el sistema verifica su elegibilidad y muestra las opciones de recarga disponibles  
		
 Scenario: Usuario no elegible para recarga SOS  
		Given que el usuario se encuentra en el portal de autogestión  
		When selecciona la opción "Recarga SOS" e ingresa su número telefónico  
		Then el sistema verifica su elegibilidad  
		And muestra un mensaje indicando que no es elegible para la recarga SOS  
		
	Scenario: Recarga SOS aplicada exitosamente  
		Given que el usuario es elegible para la recarga SOS  
		When selecciona un monto de recarga y confirma la solicitud  
		Then el sistema aplica el saldo inmediatamente a su cuenta  
		
 	Scenario Outline: Solicitud de recarga SOS con credenciales incorrectas  
		Given que el usuario se encuentra en el portal de autogestión  
		When intenta iniciar sesión con "<usuario>" y "<contrasenia>"  
		Then el sistema muestra un mensaje de error de autenticación  

		Examples:
			| usuario | contrasenia |
			| usuario1 | password1 |
			| usuario2 | password2 |