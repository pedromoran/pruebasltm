@Web
Feature: Perfil2

  @Profile2
  Scenario: Ir al perfil
    Given el cliente está logueado con el usuario <usuario> y contraseña <contraseña>
    When se dirige al desplegable Perfil
    Then se visualizan los datos <datos> de perfil del usuario
