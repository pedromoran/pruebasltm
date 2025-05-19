@Web
Feature: Perfil

  @Profile
  Scenario: Visualizar el perfil del usuario <usuario>
    Given el cliente está logueado con el usuario <usuario> y contraseña <contraseña>
    When se dirige al desplegable Perfil
    Then se visualizan los datos <datos> de perfil del usuario
    And se verifica que el campo email esta deshabilitado
    And se verifica que el boton Guardar esta deshabilitado
