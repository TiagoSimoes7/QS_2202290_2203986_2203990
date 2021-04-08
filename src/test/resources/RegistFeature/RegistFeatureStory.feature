Feature: New user regist on the aplication
    As a new User
    I want to be able to create a new account 
    So that I can be able to access the aplication

    Scenario: Create Manager Account
        Given I have the website open on the login page
        When I click on the "Regist Account" button
            And I input a valid email
            And I input a valid password
            And I input the same password on the confirmation
            And I input a valid token
            And I click on the "Create Account" button
        Then I have access to the dashboard of the company

    Scenario: Email Already Taken
        Given I have the website open on the login page
        When I click on the "Regist Account" button
            And I input a email already taken
            And I input a valid password
            And I input the same password on the confirmation
            And I input a valid token
            And I click on the "Create Account" button
        Then I can see the notification "Entered email is already taken"

    Scenario: Invalid Email
        Given I have the website open on the login page
        When I click on the "Regist Account" button
            And I input a invalid email
            And I input a valid password
            And I input the same password on the confirmation
            And I input a valid token
            And I click on the "Create Account" button
        Then I can see the notification "Entered email is invalid"

    Scenario: Invalid Password
        Given I have the website open on the login page
        When I click on the "Regist Account" button
            And I input a valid email
            And I input a invalid password
            And I input the same password on the confirmation
            And I input a valid token
            And I click on the "Create Account" button
        Then I can see the notification "Entered password is invalid"

    Scenario: Invalid Password Confirmation
        Given I have the website open on the login page
        When I click on the "Regist Account" button
            And I input a valid email
            And I input a valid password
            And I input a diferent password on the confirmation
            And I input a valid token
            And I click on the "Create Account" button
        Then I can see the notification "Passwords entered are different"

    Scenario: Invalid Token
        Given I have the website open on the login page
        When I click on the "Regist Account" button
            And I input a valid email
            And I input a valid password
            And I input the same password on the confirmation
            And I input a invalid token
            And I click on the "Create Account" button
        Then I can see the notification "Inserted token isn't associated with any company"

    Scenario: Try to regist an account with empty fields on form
        Given I have the website open on the login page
        When I click on the "Regist Account" button
            And I click on the "Create Account" button
        Then I can see the notification "All form fields are required"