Feature: Create Product Type
  As an authenticated user
  I want to be able to create a new product type
  So that I can associate a new product type to the company's products

  Scenario: Valid product type name
    Given I have the website open on the dashboard of the company
    When I click on the "Products" tab in the sidebar
    And I click on the "Manage Product Types" in the "Products" tab
    And I click on the "Create Product Type" button
    And I input a valid product type name
    And I click on the "Submit" button
    Then I have a new product type on the product type's list

  Scenario: Invalid product type name
    Given I have the website open on the dashboard of the company
    When I click on the "Products" tab in the sidebar
    And I click on the "Manage Product Types" in the "Products" tab
    And I click on the "Create Product Type" button
    And I input an invalid product type name
    Then I can see that the "Submit" button is disable
    And I can see a warning that says that I need to input a valid name
