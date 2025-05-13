Feature: Recargas SOS

Scenario: Recarga de saldo


	Scenario: Sin saldo  
		Given el usuario tiene una cuenta activa  
		And el saldo de la cuenta es 0  
		When el usuario intenta realizar una compra  
		Then la transacción es rechazada  
		And el usuario recibe un mensaje de error indicando saldo insuficiente  
		
	Scenario: Compra exitosa  
		Given el usuario tiene una cuenta activa  
		And el saldo de la cuenta es 100  
		When el usuario intenta realizar una compra de 50  
		Then la transacción es aprobada  
		And el saldo de la cuenta se reduce a 50  
		
	Scenario: Compra con saldo exacto  
		Given el usuario tiene una cuenta activa  
		And el saldo de la cuenta es 50  
		When el usuario intenta realizar una compra de 50  
		Then la transacción es aprobada  
		And el saldo de la cuenta es 0  
		
	Scenario: Intento de compra sin cuenta activa  
		Given el usuario no tiene una cuenta activa  
		When el usuario intenta realizar una compra  
		Then la transacción es rechazada  
		And el usuario recibe un mensaje de error indicando que debe activar su cuenta  