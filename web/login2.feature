Feature: Inicio de Sesion

  @Login
  Scenario: Iniciar sesion 2 exitosamente
    Given el cliente se encuentra en la pagina de login
    Then el usuario visualiza todos los proyectos en la pantalla de Dashboard
    Then no 4354 tested 