class FlightsPage
  include Capybara::DSL

  def enter_email(email)
    fill_in 'userName', with: email
  end

  def enter_password(password)
    fill_in 'password', with: password
  end

  def verify_login_success_message
    expect(page).to have_content('Login Successfully')
  end
end