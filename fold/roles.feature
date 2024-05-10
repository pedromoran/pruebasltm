Feature: Configuracion - Credenciales NUEVO

  @Smoke @Regression
  Scenario Outline: Creacion de una credencial para <credencial> con el usuario <usuario>
    Given Obtengo el token del usuario <usuario> y contraseña <contraseña>
    When Yo realizo una '<operation>' hacia '<entity>' endpoint con el '<jsonRequest>' y ''
    Then se obtuvo el status code <statusCode>
    And se obtuvo el response esperado en <entity> con el <jsonResponse>
    And Guardo la variable: 'id'  como 'credentialId'

    Examples:
      | usuario                | contraseña | credencial | jsonRequest                            | statusCode | operation | entity      | jsonResponse                           |
      | automation.credentials | 123        | Jira       | Credentials/rq_create_credentialJira   | 201        | POST      | CREDENTIALS | Credentials/rs_create_credentialJira   |
      | automation.credentials | 123        | Gitlab     | Credentials/rq_create_credentialGitlab | 201        | POST      | CREDENTIALS | Credentials/rs_create_credentialGitlab |
