Feature: Edit Product Type
  As an authenticated user
  I want to be able to edit an existent product type
  So that I can fix an existent product type of the company

  Scenario: Valid product type name
    Given I have the website open on the dashboard of the company
    When I click on the "Products" tab in the sidebar
    And I click on the "Manage Product Types" in the "Products" tab
    And I click on the "Edit" button corresponding to the product I want to edit
    And I input a valid product type name
    And I click on the "Submit" button
    Then I have the product type edited on the product type's list

  Scenario: Invalid product type name
    Given I have the website open on the dashboard of the company
    When I click on the "Products" tab in the sidebar
    And I click on the "Manage Product Types" in the "Products" tab
    And I click on the "Edit" button corresponding to the product I want to edit
    And I input an invalid product type name
    Then I can see that the "Submit" button is disable
    And I can see a warning that says that I need to input a valid name