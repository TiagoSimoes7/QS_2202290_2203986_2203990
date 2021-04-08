Feature: Check Product Type of a Product
  As an authenticated user
  I want to be able to select a product
  So that I can check its type

  Scenario: Company have at least one product
    Given I have the website open on the dashboard of the company
    When I click on the "Products" tab in the sidebar
    And I click on the "Manage Products" in the "Products" tab
    And I click on the "View" button corresponding to the product I want to check
    Then I have the product details and I can check its type