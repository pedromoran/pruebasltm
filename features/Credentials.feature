@Web @Credentials @Sequential @Regression
Feature: Configuración de Credenciales


  @Smoke @Automated
  Scenario Outline: Ingresar exitosamente pantalla Credenciales (<idioma>)
    Given el cliente se loguea con el usuario de credentials
    And el idioma del sistema está en <idioma>
    And Ingresa en la pantalla Credenciales
    And url contiene valor 'credentials'
    Then el breadcrumb posee nombre <breadcrumb>

    @EN @ES
    Examples:

      | misspell | breadcrumb   |
      | EN     | Credentials  |
      | ES     | Credenciales |