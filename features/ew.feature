Feature: #Here the title is described
  Here the feature is described
  
  #Here the scenario is described
  Scenario: scenario title
    Given preconditions
    When actions
    Then validations
      
  #Here the scenario is described
  Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Examples:
      | field | field2 |
      | data  | data2  |

      #Aca se aumentan las metricas del escenario is described
  Scenario scenario title <field> <field2>
    Given preconditions
    When actions
    Then validations
    
    Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then control
       
      Scenario Outline: scenario title <field> <field2>
    Given preconditions
    When actions
    Then Se depliage Pantalla 
    
    Examples:
      | token | valido |
      | token  | Invalido   |
      
