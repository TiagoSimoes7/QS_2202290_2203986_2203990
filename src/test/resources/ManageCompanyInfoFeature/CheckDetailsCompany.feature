Feature: Check details of company
  As an authenticated user
  I want to be able to access the Manage Company page
  So that I can check the company information

  Scenario: Access Manage Company page
    Given that I have the app open on the dashboard of the company
    When I click on the "Administration" tab in the sidebar
    And I click on the "Manage Company" button
    Then I can check all the company information
