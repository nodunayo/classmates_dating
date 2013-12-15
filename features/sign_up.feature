Feature: User signing up

  Background: Registration form
    Given I am on the new user registration form


    Scenario: Sign up via a form 
      When I fill in my email and password
      And my personal details
      And the school I graduated from 
      And I click "Submit"
      Then I should see a welcome message 

    Scenario: Sign up with invalid information
      When I sign up with invalid information
      And I click "Submit"
      Then I should see "3 errors"

    Scenario: Logging in
      Given there is a user with the email "nadia@foo.com" with the password "12345678"
      When I visit the login page
      And I fill in email with "nadia@foo.com"
      And I fill in password with "12345678"
      And I click "Login"
      Then I should see "Logged in as nadia@foo.com"