#Given I m on the mercury tours homepages
Given(/^I m on the mercury tours homepages$/) do
  page.driver.browser.manage.window.maximize
  visit('http://demo.guru99.com/test/newtours/')
end

#Given I click on the {string} link
Given('I click on the {string} link') do |click_button|                                                                                                                                                 
  click_link(click_button)                                                                                                                    
end   


#Given I enter {text} in the {field} field
Given('I enter {string} in the {string} field') do |text, field|                                                                                                                              
  case field
  when "e-mail"
    field = "userName"
  when "password"
    field = "password"
  end
  fill_in field, :with => text                                                                                                                    
end 

#When I Press the "Submit" button
When('I Press the {string} button') do |buttonName|                                                                                                                                                   
  click_button(buttonName)                                                                                                                 
end  

#Then I should see the message "Login Successfully"
Then('I should see the message {string}') do |message|
  expect(page).to have_content(message)
end

#Given I am logged in
Given(/^I am logged in$/) do
  verification = true #implement method to verify if you are logged in 
  if verification
    puts "logged" #indicate to follow the steps
  else
    puts "Logout, you need logged" #to continue the execution, you must first log in. 
end

#Then I should be logged out                                                                                                                                                                                                  
Then('I should be logged out') do                                                                                                                                                                 
  expect(page.evaluate_script('document.title')).to eq("Welcome: Mercury Tours")                                                                                                                 
end 