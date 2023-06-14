require_relative '../../page object model/pages/homePage'
require_relative '../../page object model/pages/loginPage'

#Given I m on the mercury tours homepages
Given(/^I m on the mercury tours homepages$/) do
  @home_page = HomePage.new
  @home_page.visit_home_page
end

#Given I click on the {string} link
Given('I click on the {string} link') do |click_button|                                                                                                                                                 
  @login_page = LoginPage.new
  @login_page.click_buttom(click_button)                                                                                                                    
end   


#Given I enter {text} in the {field} field
Given('I enter {string} in the {string} field') do |text, field|                                                                                                                              
  case field
  when "e-mail"
    @login_page.enter_email(text)
  when "password"
    @login_page.enter_password(text)
  end                                                                                                                  
end 

#When I Press the "Submit" button
When('I Press the {string} button') do |buttonName| 
  @login_page.click_buttom(buttonName)                                                                                                                                                                                                                                                                  
end  

#Then I should see the message "Login Successfully"
Then('I should see the message {string}') do |message|
  @login_page.verify_message(message)
end

#Given I am logged in
Given(/^I am logged in$/) do
  verification = true #implement method to verify if you are logged in 
  if verification
    puts "logged" #indicate to follow the steps
  else
    puts "Logout, you need logged" #to continue the execution, you must first log in. 
  end
end

#Then I should be logged out                                                                                                                                                                                                  
Then('I should be logged out') do                                                                                                                                                                  
  @login_page.verify_page_title("Welcome: Mercury Tours")                                                                                                                
end 