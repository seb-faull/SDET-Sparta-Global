Given("I am on the bbc sign in page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_sign_in_page.visit_sign_in_page
end

And("I click the link to register") do
  @bbc_site.bbc_sign_in_page.click_register_link
  sleep 2
end

When("I input a date of birth") do
  @bbc_site.bbc_register_page.enter_DOB('22', '06', '1993')
  @bbc_site.bbc_register_page.click_next_button
end

And(/input an email and the password details (.*)/) do |password|
  @bbc_site.bbc_register_page.fill_in_email('lucy5731@gmail.com')
  @bbc_site.bbc_register_page.fill_in_password(password)
  @bbc_site.bbc_register_page.password_field_tab
  sleep 3
end

Then(/I receive the corresponding error (.*)/) do |error|
  expect(@bbc_site.bbc_register_page.check_error_message).to eq error
end
