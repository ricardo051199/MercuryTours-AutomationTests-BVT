class LoginPage
  include Capybara::DSL
  include RSpec::Matchers

  def click_buttom(buttom)
    click_link(buttom)
  end

  def enter_email(email)
    fill_in 'userName', with: email
  end

  def enter_password(password)
    fill_in 'password', with: password
  end

  def verify_message(message)
    expect(page).to have_content(message)
  end

  def verify_page_title(title)
    expect(page.evaluate_script('document.title')).to eq(title)
  end
end