@login
Feature: Budgets

  Scenario: Fail to add budget
    When add a budget
      | month   | amount |
      | 2018-07 |        |
      |         | 1000   |
    Then I can see an alert
      | error msg             |
      | amount can't be empty |
      | month can't be empty  |


  Scenario: Add a budget
    When add a budget
      | month   | amount |
      | 2018-07 | 1000   |
      | 2018-08 | 2000   |
    Then I can see the budget in the list
      | month   | amount |
      | 2018-07 | 1000   |
      | 2018-08 | 2000   |

