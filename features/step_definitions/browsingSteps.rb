require_relative '../../page object model/pages/homePage'
require_relative '../../page object model/pages/browsingPage'

#Given I am on the Mercury tours homepage
Given(/^I am on the Mercury tours homepage$/) do                                                                                                                                                    
  @home_page = HomePage.new
  @home_page.visit_home_page                                                                                                                  
end         

#Given I see the flight link                                                                                                                                                                                                  
Given(/^I see the "([^"]*)" link$/) do |searchLink| 
  @browsing_page = BrowsingPage.new                                                                                                                                                              
  @browsing_page.verify_link(searchLink)                                                                                                               
end

#When Click on the "LINK" link                                                                                                                                                                                               
When(/^I will click on the "([^"]*)" link$/) do |link|                                                                                                                                                    
  @browsing_page.click_a_link(link)
end

#Then I see the {PAGE} page                                                                                                                                                                                              
When(/^I see the "([^"]*)" page$/) do |result| 
  pageTitle = @browsing_page.define_page_title(result)                                                                                                                          
  @browsing_page.verify_page_title(pageTitle)                                                                                                                 
end