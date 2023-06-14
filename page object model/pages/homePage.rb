class HomePage
  include Capybara::DSL

  def visit_home_page
    visit('http://demo.guru99.com/test/newtours/')
  end
end