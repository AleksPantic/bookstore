Feature: Home page

Scenario: Viewing application's home page
Given there's a book titled "Here and there" with "this goes here & that goes there etc etc etc" description
When I am on the homepage
Then I should see the "Here and there" book
