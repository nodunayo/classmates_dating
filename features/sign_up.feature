Feature: User signing up

Scenario: Sign up via a form
  Given I am on the new user registration form
  When I fill in my email and password
  And my personal details
  And the school I graduated from 
  And click "Submit"
  Then I should see a welcome message 