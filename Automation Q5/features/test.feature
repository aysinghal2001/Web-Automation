Feature: Filling the test data

  Scenario: User is able to submit the form successfully
    Given I am on the Form page
    When I enter valid details
    Then I should be able to submit the form successfully

  Scenario: User is not able to submit the form successfully
    Given I am on the Form page
    When I enter invalid phone number
    Then I should not be able to submit the form successfully

