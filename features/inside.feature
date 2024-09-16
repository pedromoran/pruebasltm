Feature: Inicio de Sesion

  @InicioSesion @Regression @Smoke @EN @ES
  Scenario Outline: Iniciar sesion exitosamente con el usuario <usuario>
    Given el cliente se encuentra en la pagina de login
    When el cliente ingresa al sistema con el usuario <usuario> y contrasenia <contrasenia>
    Then el usuario visualiza todos los proyectos en la pantalla de "Dashboard"

    Examples:
      | usuario                 | contrasenia |
      | automation.ltm          | 1234        |
      | automationltm@gmail.com | 1234        |