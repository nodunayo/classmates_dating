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

  Scenario: Sending messages
    Given I am on the compose message page
    And I have submitted the form
    Then I should see "Message sent!"
    And I should see my sent message