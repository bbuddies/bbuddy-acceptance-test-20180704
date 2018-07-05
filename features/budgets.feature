@login
Feature: Budgets

  Scenario: add a budgets
    When add a budget
      | month | amount |
      | 09/2018 | 200 |
    Then you will see budgets
      | month | amount |
      | 09/2018 | 200 |
