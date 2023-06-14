Feature: Verify Mercury Tours registration 
    To access the website system
    As a registered user
    I want to try the online purchase options
    
Background:
    Given I am on the mercury tours homepages
    And I click the "Register" link

@maximize
Scenario: Register a valid user on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Pepito             |
    |Last Name:         | Perez              |
    |Phone:             | 12345671           |
    |Email:             | pepe@pepazo.com    |
    |Address:           | Av. America #123   |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 9897               |
    |Country:           | BOLIVIA            |
    |User Name:         | Pepazo             |
    |Password:          | ILoveQA            | 
    |Confirm Password:  | ILoveQA            |
    When send my registration form
    Then the confirmation screen is show
    And my user name is "Pepazo"

@maximize
Scenario: Register an existing user on the mercury tours page.  
    Given I enter the required fields as follows
    |First Name:        | Pepito             |
    |Last Name:         | Perez              |
    |Phone:             | 12345671           |
    |Email:             | pepe@pepazo.com    |
    |Address:           | Av. America #123   |  
    |City:              | Cochabamba         |
    |State/Province:    | Cochabamba         |  
    |Postal Code:       | 9897               |
    |Country:           | BOLIVIA            |
    |User Name:         | Pepazo             |
    |Password:          | ILoveQA            | 
    |Confirm Password:  | ILoveQA            |
    When send my registration form
    Then I see a message "Existing user."
    And I see empty registration form fields