Feature: Login on Ecommerce Website

  Scenario: User is able to login successfully
    Given I am on Login Page
    When I enter valid username and password
    Then I should be able to login successfully

