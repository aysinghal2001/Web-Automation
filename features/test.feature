Feature: Placing Order on Ecommerce Website

  Scenario: User is able to login successfully
    Given I am on Login Page
    When I enter valid username and password
    Then I should be able to login successfully

  Scenario: User is able to place an order on Ecommerce Website
    Given I am on Home Page
    When I click on Add to Cart button of Sauce Labs Bolt Tshirt product
    And I click on Cart Icon
    Then I should see Checkout page 
    And I should able to place an order successfully
