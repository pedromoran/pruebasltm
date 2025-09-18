
Feature: feature de prueba para card 3537
  Scenario: Usuario envía un mensaje multilínea
    When este es un ejemplo usando Doc String:
    """Hola equipo,
    """
    And este es un ejemplo usando "Cucumber Expression"
    And este es un ejemplo utilizando Regex clásica
    And ahora vamos a hacer un data table
      | nombre    | precio |
      | producto1 | 100    |
      | producto2 | 200    |
    And un ejemplo de para step combinados sería un datatable y "Cucumber Expression"
      | nombre | precio |
      | notebook | 1200 |
      | smartphone | 900 |
      | teclado | 150 |
    Then voy a hacer una combinacion con regex "Cucumber Expression" y Doc String:
    """Hola equipos
    """