Feature: Search city in Redfin

  Scenario: User can search city in Redfin
    Given I'm on Redfin
    When I type "Sunnyvale, CA" in search field
    Then I should see "Sunnyvale Real Estate" in result
    When I select three options from downdown list
    Then I should see the filtered housing list in result
