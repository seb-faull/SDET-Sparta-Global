require 'spec_helper'

describe 'some appium tests for budget watch' do
  opts = {
           caps: {
             platformName: :android,
             deviceName: "emulator-5554",
             app: "/Users/Tech-A25/Downloads/budgetwatch.apk"
           }
         }

  before(:all) do
    Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    $driver.start_driver
  end

  it 'should open the app' do
    find_element(:id, 'protect.budgetwatch:id/action_settings').displayed?
  end

  it 'should open the settings' do
    find_elements(:id, 'protect.budgetwatch:id/menu')[0].click
    # p x[0].text
    # Save the above test in a variable 'x'
  end

end
