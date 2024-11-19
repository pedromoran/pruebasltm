Feature: new

  @Login
  Scenario: Iniciar sesion exitosamente con el usuario <usuario>
    Given el cliente se encuentra en la pagina de login
    When el cliente ingresa al sistema con el usuario <usuario> y contrasenia <contrasenia>
    Then el usuario visualiza todos los proyectos en la pantalla de Dashboard