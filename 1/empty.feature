@empty
Feature: hello world
  
  Scenario: hello world
    Given Obtengo el token del usuario <usuario> y contraseña <contraseña>
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonRequest>' y ''
    Then se obtuvo el status code <statusCode>
