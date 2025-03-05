@Web
Feature: Long

  @Profile
  Scenario: Visualizar el perfil del usuario <usuario>
    Given el cliente está logueado con el usuario <usuario> y contraseña <contraseña>
    When se dirige al desplegable Perfil
    Then se visualizan los datos <datos> de perfil del usuario
    And se verifica que el campo email esta deshabilitado
    And se verifica que el boton Guardar esta deshabilitado

  @Profile
  Scenario: Asignar un username existente (<idioma>)
    Given el cliente está logueado con el usuario automation.credentials y contraseña 1234
    And el cliente se encuentra en la pantalla de Perfil
    And el idioma del sistema está en <idioma>
    When edita el campo Username <username> de Perfil
    And hace click en el boton Guardar de Perfil
    Then aparece una alerta con el mensaje: <mensaje>
    And se verifico que se no se modifico el Nombre De Usuario <username>
