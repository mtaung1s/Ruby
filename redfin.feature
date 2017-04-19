Feature: User sign in and search city in Redfin

  Scenario: User can choose sign in on Redfin
    Given I'm on Redfin
    When I click "Sign in"
    Then I should see sign in dialog

  Scenario: User can sign in using username and password
    Given I'm on signed in page
    When I enter email "test@gmail.com" in email field
    And I enter password "password" in password field
    Then I should go to user page

  Scenario: User can search city in Redfin
    Given I'm on user page
    When I type "Sunnyvale, CA" in search field
    Then I should see "Sunnyvale Real Estate" in result
    When I select three options from downdown list
    Then I should see the filtered housing list in result

