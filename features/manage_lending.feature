Feature: Lendings
  As a dvd owner
  In order to avoid loosing my dvds
  I want to keep track of my lendings

  Scenario: Use the app for the first time
    When I go to the home page
    And I click the connect button
    And I allow the app in facebook
    Then I should see the form to create a lending


  Scenario: Connect when I have not yet create lendings
    Given I am a registered user
    When I go to the home page
    And I click the connect button
    Then I should see the form to create a lending


  Scenario: Create a lending
    Given I am a registered user
    When I go to the lending creation page
    And I choose a film name
    And I choose a user
    And I press the submit button
    Then I should be on the lending list page
    And I should see my new lending hilighted on top of the page


  Scenario: Connect when I already have create lendings
    Given I am a registered user
    When I go to the home page
    And I click the connect button
    Then I should be on the lending list page


  Scenario: Mark a lending as recovered when there are others ongoing ones
    Given I am a registered user
    And I have to lendings
    When I go to the lending page
    And I click the "recovered" button of a lending
    Then this lending should not appear in the list anymore


  Scenario: Mark a lending as recovered when it's the last ongoing one
    Given I am a registered user
    And I have only one lending
    When I go to the lending page
    And I click the "recovered" button of a lending
    Then I should see the lending creation form
