Feature: Search for flights on Mercury Tours
  To search for a flight on the Mercury website
  As a user
  I want to try the flight search option

Background:
  Given I am on the Mercury Tours homepage
  And I will click the "Flights" link 

@maximize
Scenario: Search for a flight with available seats, with the origin and destination different from each other on the Mercury Tours page.    
  Given I enter the required fields as show below
    |Type:                   | Round Trip         |
    |Passengers:             | 2                  |
    |Departing From:         | Acapulco           |
    |On:                     | January-1          |
    |Arriving In:            | Zurich             |  
    |Returning:              | February-1         |
    |Service Class:          | Business class     |
    |Airline:                | No Preference      |
  When send my flight search form
  Then I see text above after flight search engine "After flight finder - Seats Avaialble"

@maximize
Scenario: Search a flight with no seats avaialble on the Mercury Tours page.     
  Given I enter the required fields as show below
    |Type:                   | One Way            |
    |Passengers:             | 4                  |
    |Departing From:         | London             |
    |On:                     | August-1           |
    |Arriving In:            | Paris              |  
    |Returning:              | September-1        |
    |Service Class:          | First class        |
    |Airline:                | Blue Skies Airlines|
  When send my flight search form
  Then I see text above after flight search engine "After flight finder - No Seats Avaialble  "