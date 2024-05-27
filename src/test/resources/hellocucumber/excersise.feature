@saturday
Feature: Is it Saturday yet?
  Everybody wants to know when it´s Saturday

  @saturday01
  Scenario Outline: Today is or is not Saturday
    Given today is "<day>"
    When I ask whether it`s Saturday yet
    Then I should be told "<answer>"
    Examples:
      | day           | answer  |
      | Friday        | Nope    |
      | Saturday      | Nice!   |
      | Sunday        | Nope    |
      | Monday        | Nope    |

  @saturday02
  Scenario: Today is or is not Saturday
    Given today is "Wednesday"
    When I ask whether it`s Saturday yet
    Then I should be told "Nope"

  @failsaturday
  Scenario: Today is or is not Saturday
    Given today is "nothing"
    When I ask whether it`s Saturday yet
    Then I should be told "nothing"

