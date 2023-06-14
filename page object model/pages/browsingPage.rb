class BrowsingPage
  include Capybara::DSL
  include RSpec::Matchers

  def verify_link(link)
    expect(page).to have_content(link)
  end

  def click_a_link(link)
    click_link(link)
  end

  def verify_page_title(title)
    expect(page.evaluate_script('document.title')).to eq(title)
  end

  def define_page_title(page)
    case page
    when "Flights"
      pageTitle = "Find a Flight: Mercury Tours:"
    when "Hotels"
      pageTitle = "Find a Hotels: Mercury Tours:"  
    when "Car Rentals"
      pageTitle = "Find a Car Rental: Mercury Tours:"
    when "Cruises"
      pageTitle = "Welcome: Mercury Tours"  
    when "Destinations", "your destination"
      pageTitle = "Find a Destination: Mercury Tours:"
    when "Vacations", "featured vacation destinations"
      pageTitle = "Find a Vacation: Mercury Tours:"  
    when "SIGN-ON"
      pageTitle = "Sign-on: Mercury Tours"
    when "REGISTER", "Register here"
      pageTitle = "Register: Mercury Tours" 
    when "SUPPORT"
      pageTitle = "Support: Mercury Tours"
    when "CONTACT"
      pageTitle = "Contact: Mercury Tours" 
    when "Salon Travel"
      pageTitle = "Tripadvisor: Over a billion reviews & contributions for Hotels, Attractions, Restaurants, and more"    
    end 
    return pageTitle
  end 
end