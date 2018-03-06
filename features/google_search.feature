Feature: Google can search

Background:
	Given I am on Google

Scenario: Search for a term
	When I fill in "q" found by "name" with "TestingBot"
	And I submit
	Then I should see title "TestingBot - Google Search"
