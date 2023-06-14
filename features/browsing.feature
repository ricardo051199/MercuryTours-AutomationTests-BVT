Feature: Browse Mercury Tours
  To access the services of the website
  As a general/registered user
  I would like to test the services provided by the website.

Background:
  Given I am on the Mercury tours homepage

Scenario: Go to the flights section on the Mercury Tours page.    
  Given I see the "Flights" link
  When I will click on the "Flights" link
  Then I see the "Flights" page

Scenario: Go to the hotels section on the Mercury Tours page.    
  Given I see the "Hotels" link
  When I will click on the "Hotels" link
  Then I see the "Hotels" page

Scenario: Go to car rental section on the Mercury Tours page.    
  Given I see the "Car Rentals" link
  When I will click on the "Car Rentals" link
  Then I see the "Car Rentals" page

Scenario: Go to the cruises section on the Mercury Tours page.    
  Given I see the "Cruises" link
  When I will click on the "Cruises" link
  Then I see the "Cruises" page

Scenario: Go to the login section from the menu on the Mercury Tours page.    
  Given I see the "SIGN-ON" link
  When I will click on the "SIGN-ON" link
  Then I see the "SIGN-ON" page

Scenario: Go to the registration section from the menu on the Mercury Tours page.    
  Given I see the "REGISTER" link
  When I will click on the "REGISTER" link
  Then I see the "REGISTER" page

Scenario: Go to the support section from the menu on the Mercury Tours page.    
  Given I see the "SUPPORT" link
  When I will click on the "SUPPORT" link
  Then I see the "SUPPORT" page

Scenario: Go to the contact section from the menu on the Mercury Tours page.    
  Given I see the "CONTACT" link
  When I will click on the "CONTACT" link
  Then I see the "CONTACT" page
