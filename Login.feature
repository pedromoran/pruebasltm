@Frontend_Login
Feature: Inicio de Sesion

  Scenario: Frontend iniciar sesion exitosamente con el usuario <usuario>
    Given el cliente se encuentra en la pagina de login
    When el cliente ingresa al sistema con el usuario <usuario> y contrasenia <contrasenia>
    Then el usuario visualiza todos los proyectos en la pantalla de Dashboard
    Then no 4354 tested 

  @Failed_Login
  Scenario: Frontend Iniciar sesion fallido con usuario erroneo
    Given el cliente se encuentra en la pagina de login
    When el cliente ingresa al sistema con el usuario aaa y contrasenio
