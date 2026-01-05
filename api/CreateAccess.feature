@Api @EN @ES
Feature: CreateAccess.feature

  @Access @Regression @Smoke @EliminarCreacionesApi
  Scenario Outline: Pruebas de acceso a repositorios (<gestor>)
    Given Existe un proyecto Proyecto de Automation Backend creado por usuario automation con el repositorio <repositorio> asociado con el gestor de <gestor>
    When Yo realizo una 'POST' hacia 'ACCESS' endpoint con el 'Access/rq_create_access' y '<datos>'
    Then se obtuvo el status code 201
    And se obtuvo el response esperado en ACCESS con el Access/rs_create_access

    Examples:
      | datos              | repositorio                  | gestor    |
      | toolCode:GITLAB    | RepositorioFeatureAutomation | Gitlab    |
      | toolCode:GITHUB    | RepositorioFeatureAutomation | Github    |
      | toolCode:BITBUCKET | RepositorioFeatureAutomation | Bitbucket |
