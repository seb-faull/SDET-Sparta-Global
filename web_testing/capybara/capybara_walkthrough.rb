require 'capybara'

Capybara::register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

# driver = Capybara::Session.new(:chrome)
# driver.visit 'http://store.demoqa.com/'
#
# driver.find(:xpath, '//*[@id="footer"]/section[2]/ul/li[4]/a[3]').click
# sleep 2

driver = Capybara::Session.new(:chrome)
driver.visit 'http://toolsqa.com/automation-practice-form/'

driver.fill_in('firstname', with: 'Seb')
driver.fill_in('lastname', with: 'Faull')
driver.choose('sex-0')
driver.choose('sex-1')

sleep 2
