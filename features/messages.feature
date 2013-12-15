Feature: Users messaging one another

  Background: Already logged in
    Given I am logged in

  Scenario: Viewing messages
    Given I have received a message
    And I am on the inbox page
    Then I should see the message

  Scenario: Viewing sent messages
    Given I have sent a message
    And I am on the inbox page
    Then I should see my sent message