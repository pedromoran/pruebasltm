Feature: The word guess game

  The word guess game is a turn-based game for two players.
  The Maker makes a word for the Breaker to guess. The game
  is over when the Breaker guesses the Maker's word.

  Scenario: Successful word guess
    Given the Maker has set the word "apple"
    When the Breaker guesses "apple"
    Then validate that the guess is correct
    And display "Congratulations! You've guessed the word."

  Scenario: Incorrect word guess
    Given the Maker has set the word "banana"
    When the Breaker guesses "orange"
    Then validate that the guess is incorrect
    And display "Try again! Incorrect guess."

  Scenario: Empty word guess validation
    Given the Maker has set the word "grape"
    When the Breaker submits an empty guess
    Then display "Error: Please enter a word to guess."
