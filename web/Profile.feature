@Web @Profile @Profile @Regression
Feature: Validacion de datos de perfil

  @Smoke @Automated
  Scenario Outline: Visualizar el perfil del usuario <usuario>
    Given el cliente se loguea con el usuario de <usuario>
    And el cliente hace click en el menu del avatar
    When se dirige al desplegable Perfil
    Then se visualizan los datos <datos> de perfil del usuario
    And se verifica que el campo email esta deshabilitado
    And se verifica que el boton <boton> esta deshabilitado
    @ES
    Examples:
      | usuario    | datos                                                                                                   | boton   |
      | automation | name:AutomationToken,lastname:UserToken,email:automationltm@gmail.com,username:automation.ltm,rol:Admin | Guardar |
    @EN
    Examples:
      | usuario    | datos                                                                                                   | boton |
      | automation | name:AutomationToken,lastname:UserToken,email:automationltm@gmail.com,username:automation.ltm,rol:Admin | Save  |


  @Smoke @Automated
    Scenario Outline: Visualizar el perfil del usuario <usuario>
      Given el cliente se loguea con el usuario de <usuario>
      And el cliente hace click en el menu del avatar
      When se dirige al desplegable Perfil
      Then se visualizan los datos <datos> de perfil del usuario
      And se verifica que el campo email esta deshabilitado
      And se verifica que el boton <boton> esta deshabilitado