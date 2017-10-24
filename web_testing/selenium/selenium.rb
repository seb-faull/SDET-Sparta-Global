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
dropdown_list = @driver.find_element(:id, 'continents')
options = dropdown_list.find_elements(tag_name: 'option')
options.each { |option| option.click if option.text == 'Europe' }

command_selector = @driver.find_elements(:id, 'selenium_commands')
options = command_selector.find_elements(tag_name: 'option')
options.each { |option| option.click if option.text == 'Browser Commands' }

selected_command 
