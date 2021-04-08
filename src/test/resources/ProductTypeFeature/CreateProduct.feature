Feature: Create a Product
  As an authenticated user
  I want to be able to create a product
  So that I can add a product to the company's products list

  Scenario: All form fields are valid
    Given I have the website open on the dashboard of the company
    When I click on the "Products" tab in the sidebar
    And I click on the "Create new Product" in the "Products" tab
    And I input a valid name
    And I input a valid stock quantity
    And I select a product type
    And I click on the "Submit" button
    Then I have the product created
    And I can check it on products list