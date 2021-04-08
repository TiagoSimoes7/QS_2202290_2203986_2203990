Feature: Check Product Types List
  As an authenticated user
  I want to be able to check the product types list
  So that I can check all the product types associated to the company

  Scenario: Company have product types associated
    Given I have the website open on the dashboard of the company
    When I click on the "Products" tab in the sidebar
    And I click on the "Manage Product Types" in the "Products" tab
    Then I can check the product type's list