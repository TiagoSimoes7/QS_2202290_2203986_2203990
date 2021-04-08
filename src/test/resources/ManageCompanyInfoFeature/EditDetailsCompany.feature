Feature: Edit company details
  As an administrator user
  I want to be able to edit the company information
  So that I can update the company information

  Scenario: Edit the company details
    Given that I have the app open on the dashboard of the company
    When I click on the "Administration" tab in the sidebar
    And I click on the "Manage Company" button
    And I click on the "Edit" button
    And I input a name
    And I input a description
    And I input a valid email
    And I input a valid phone number
    And I choose a country
    And I input a valid district
    And I input a address
    And I input a valid postal code
    And I click in "Save" button
    Then I can see the changes made on the company information

  Scenario: Empty fields
    Given that I have the app open on the dashboard of the company
    When I click on the "Administration" tab in the sidebar
    And I click on the "Manage Company" button
    And I click on the "Edit" button
    And I leave the "Company name" field empty
    Then I can see that the "Save" button is disable
    And I can see a warning saying that I need to input a name


  Scenario: Invalid company email
    Given that I have the app open on the dashboard of the company
    When I click on the "Administration" tab in the sidebar
    And I click on the "Manage Company" button
    And I click on the "Edit" button
    And I input an invalid email
    Then I can see that the "Save" button is disable
    And I can see a warning saying that I need to input a valid email


  Scenario: Invalid phone number
    Given that I have the app open on the dashboard of the company
    When I click on the "Administration" tab in the sidebar
    And I click on the "Manage Company" button
    And I click on the "Edit" button
    And I input an invalid phone number
    Then I can see that the "Save" button is disable
    And I can see a warning saying that I need to input a valid phone number


  Scenario: Invalid postal code
    Given that I have the app open on the dashboard of the company
    When I click on the "Administration" tab in the sidebar
    And I click on the "Manage Company" button
    And I click on the "Edit" button
    And I input an invalid postal code
    Then I can see that the "Save" button is disable
    And I can see a warning saying that I need to input a valid postal code


  Scenario: Invalid district
    Given that I have the app open on the dashboard of the company
    When I click on the "Administration" tab in the sidebar
    And I click on the "Manage Company" button
    And I click on the "Edit" button
    And I input an invalid district
    Then I can see that the "Save" button is disable
    And I can see a warning saying that I need to input a valid district
