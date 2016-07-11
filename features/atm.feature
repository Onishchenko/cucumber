Feature: Cash Withdrawal
  Scenario: Successful withdrawal from an account in credit
    Given My account has been credited with $100
    When I request $20
    Then $20 should be dispensed
    And the ballance of my account should be $80