@Api @EN @ES @Issues @Regression
Feature: Issues

  @Smoke @EliminarCreacionesApi
  Scenario Outline: Creacion de un issue con gestor <gestor>
    Given Existe una run Run de Automation Backend creado por usuario de automation con estado IN PROGRESS para el proyecto Proyecto de Automation con el gestor <gestor> y asociado a <gestorIssue>
    When Yo realizo una 'POST' hacia 'ISSUES' endpoint con el 'Issues/rq_post_issues' y ''
    Then se obtuvo el status code 201

    Examples:
     | gestor | gestorIssue |
     | GITLAB | GITLAB      |
     | GITHUB | GITHUB      |