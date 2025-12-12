@Web
Feature: Perfil2

  @Profile1
  Scenario: Ir al perfil 1
    Given el cliente está logueado con el usuario <usuario> y contraseña <contraseña>
    When se dirige al desplegable Perfil
    Then se visualizan los datos <datos> de perfil del usuario
  
  @Profile2
  Scenario: Ir al perfil 2
    Given el cliente está logueado con el usuario <usuario> y contraseña <contraseña>
    When se dirige al desplegable Perfil
    Then se visualizan los datos <datos> de perfil del usuario
