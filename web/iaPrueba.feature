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
		
	Scenario: Aplicación de recarga SOS exitosa  
		Given que el usuario es elegible para la recarga SOS  
		When selecciona una de las opciones de recarga disponibles  
		Then el sistema aplica el saldo inmediatamente  
		And muestra un mensaje de confirmación de recarga exitosa  
		
  Scenario: Error en la aplicación de recarga SOS  
		Given que el usuario es elegible para la recarga SOS  
		When selecciona una de las opciones de recarga disponibles  
		And ocurre un error durante el proceso  
		Then el sistema muestra un mensaje de error indicando que la recarga no pudo ser completada  
		
	Scenario Outline: Verificación de elegibilidad de usuario  
		Given que el usuario <usuario> intenta solicitar una recarga SOS  
		When ingresa su número telefónico  
		Then el sistema verifica su elegibilidad  
		And muestra las opciones de recarga disponibles si es elegible  

		Examples:
			| usuario |
			| usuario1 |
			| usuario2 |