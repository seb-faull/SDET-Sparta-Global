require 'capybara/dsl'

class Signinpage
  include Capybara::DSL

  SIGN_IN_PAGE_LINK = 'https://account.bbc.com/signin'
  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SUBMIT_BUTTON_ID = 'submit-button'

  def visit_sign_in_page
    visit(SIGN_IN_PAGE_LINK)
  end

#Username field methods
  def username_field
    find(USERNAME_FIELD_ID)
  end

  def input_username(username)
    username_field.send_keys(username)
  end

#Password field methods
  def password_field
    find(PASSWORD_FIELD_ID)
  end

  def input_password(password)
    password_field.send_keys(password)
  end

#Submit button methods
  def submit_button
    find(SUBMIT_BUTTON_ID)
  end

  def click_submit_button
    submit_button.click
  end

end
