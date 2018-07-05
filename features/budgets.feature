@login
Feature: Budgets
  Scenario: add a budgets
    When add a budget
      | month | amount |
      | 09/2018 | 200 |
    Then you will see budgets
      | month | amount |
      | 09/2018 | 200 |

  Scenario: update a budgets
    Given having a budget
      | month | amount |
      | 09/2018 | 200 |
    When update a budget
      | month | amount |
      | 09/2018 | 500 |
    Then you will see budgets
      | month | amount |
      | 09/2018 | 500 |

