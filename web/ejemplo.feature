@Web @Issues @Regression @ModuloB
Feature: Gestión de Incidencias desde la pantalla Integraciones

  @EliminarCreacionesWeb @Automated
  Scenario Outline: Integrar una herramienta de gestion desde el boton Agregar (<idioma>/<herramientaDeGestion>)
    Given Existe el proyecto Proyecto de Automation creado por automation
    And el cliente está logueado con el usuario de automation
    And el cliente se encuentra en el proyecto Proyecto de Automation
    And el idioma del sistema está en <idioma>
    When hace click en Agregar de la seccion incidencias
    And selecciona la herramienta <herramientaDeGestion>
    And selecciona de la lista el proyecto <integracion>
    And hace click en Guardar de Nueva Integracion
    Then aparece una alerta con el mensaje: <mensaje>
    And se visualiza el Proyecto <integracion> asociado

    @ES
    Examples:
      | idioma | herramientaDeGestion | integracion                  | mensaje            |
      | ES     | Jira                 | RepositorioFeatureAutomation | Integracion creada |
      | ES     | Gitlab               | RepositorioFeatureAutomation | Integracion creada |
      | ES     | Azure DevOps         | AutomationLippia Team        | Integracion creada |
      | ES     | Github               | RepositorioFeatureAutomation | Integracion creada |

    @EN
    Examples:
      | idioma | herramientaDeGestion | integracion                  | mensaje             |
      | EN     | Gitlab               | RepositorioFeatureAutomation | Integration created |
      | EN     | Azure DevOps         | LTM Team        | Integration created |
