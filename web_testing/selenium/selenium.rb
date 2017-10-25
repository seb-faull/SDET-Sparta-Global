require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path='/usr/local/bin/chromedriver' #Ideally in an initialize class

@driver = Selenium::WebDriver.for :chrome

@driver.get 'http://toolsqa.com/automation-practice-form/'

# p @driver.find_element(:name, 'firstname').displayed?
#
# @driver.find_element(:name, 'firstname').send_keys('seb')
#
# p @driver.find_element(:name, 'firstname')['value'] == 'sb'
# sleep 3
# dropdown_list = @driver.find_element(:id, 'continents')
# options = dropdown_list.find_elements(tag_name: 'option')
# options.each { |option| option.click if option.text == 'Europe' }
#
# command_selector = @driver.find_elements(:id, 'selenium_commands')
# options = command_selector.find_elements(tag_name: 'option')
# options.each { |option| option.click if option.text == 'Browser Commands' }
#
# selected_command

# command_selector = @driver.find_element(:name, 'selenium_commands')
# options = command_selector.find_element(tag_name: 'option')
# options.click if options.text == 'Browser Commands' || options.text == 'Navigation Commands' || options.text == 'Switch Commands' || options.text == 'Wait Commands' || options.text == 'WebElement Commands'
#
# selected_command = options.text if options.selected?
# expect(selected_command).to eq 'Browser Commands' || 'Navigation Commands' || 'Switch Commands' || 'Wait Commands' || 'WebElement Commands'
# p optins.text
