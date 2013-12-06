Feature: User signing up

Background: Registration form
  Given I am on the new user registration form


Scenario: Sign up via a form 
  When I fill in my email and password
  And my personal details
  And the school I graduated from 
  And click "Submit"
  Then I should see a welcome message 

Scenario: Sign up with invalid information
  When I sign up with invalid information
  And click "Submit"
  Then I should see "3 errors"