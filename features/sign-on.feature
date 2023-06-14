Feature: Verify login Mercury Tours 
    To access the website system
    As a registered user
    I want to try the online purchase options
    
Background:
    Given I m on the mercury tours homepages

Scenario: Login with a registered user name and password on the Mercury Tours page      
    Given I click on the "SIGN-ON" link
    And I enter "pepe@pepazo.com" in the "e-mail" field
    And I enter "ILoveQA" in the "password" field
    When I Press the "Submit" button
    Then I should see the message "Login Successfully"

Scenario: unlogin from the website         
    Given I am logged in
    And I click on the "Flights" link
    When I click on the "SIGN-OFF" link
    Then I should be logged out
