Feature: Edit Product Type of a Product
  As an authenticated user
  I want to be able to select a product
  So that I can edit its type

  Scenario: Company have at least one product
    Given I have the website open on the dashboard of the company
    When I click on the "Products" tab in the sidebar
    And I click on the "Manage Products" in the "Products" tab
    And I click on the "Edit" button corresponding to the product I want to edit
    And I select a "Product type"
    And I click on the "Submit" button
    Then I have the product type updated
    And I can check the product updated on products list