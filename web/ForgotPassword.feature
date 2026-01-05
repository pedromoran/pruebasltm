@Web @Regression @ForgotPassword @Login
Feature: Recuperar Contraseña

  @EN @ES @Automated
  Scenario Outline: Recuperar contraseña exitosamente
    Given el cliente se encuentra en la página de login
    When El cliente hace click en "Forgot password?"
    And El cliente ingresa <usuarioOEmail>, y hace click en "Submit"
    Then El cliente visualiza en Forgot Password el mensaje <mensaje>
    And se visualiza la pagina de login 

    Examples:
      | usuarioOEmail           | mensaje                                                        |
      | automation.ltm          | You should receive an email shortly with further instructions. |
      | automationltm@gmail.com | You should receive an email shortly with further instructions. |

  @Login @Regression @Smoke @EN @ES @ForgotPassword @NoCandidate
  Scenario: Recuperar contraseña con token vencido
    Given se recibió email Reset password
    And pasaron 5 minutos desde que se recibe el email
    When El cliente hace click en "Link to reset credentials"
    Then El cliente visualiza la pantalla de login
    And visualiza el mensaje "Action expired. Please start again." 
    