require 'spec_helper'

describe 'qaform' do

  before(:all) do
    @driver = Selenium::WebDriver.for :chrome
  end

  it 'should open the qaform page' do
    @driver.get('http://toolsqa.com/automation-practice-form/')
    expect(@driver.current_url).to eq 'http://toolsqa.com/automation-practice-form/'
    @driver.find_element(:name, 'firstname').displayed?
  end

  it 'should display and click on the link: Partial Link Test' do
    expect(@driver.find_element(:link, 'Partial Link Test').displayed?)
    expect(@driver.find_element(:link, 'Partial Link Test').click)
  end

  it 'should display and click on the link: Link Test' do
    expect(@driver.find_element(:link, 'Link Test').displayed?)
    expect(@driver.find_element(:link, 'Link Test').click)
    @driver.navigate().back()
  end

  it 'should fill in the First Name text field' do
    @driver.find_element(:name, 'firstname').displayed?
    @driver.find_element(:name, 'firstname').send_keys('Seb')
    expect(@driver.find_element(:name, 'firstname')['value']).to eq('Seb')
  end

  it 'should fill in the Last Name text field' do
    @driver.find_element(:name, 'lastname').displayed?
    @driver.find_element(:name, 'lastname').send_keys('Faull')
    expect(@driver.find_element(:name, 'lastname')['value']).to eq('Faull')
  end

  it 'should click the radio Sex buttons' do
    expect@driver.find_element(:id, 'sex-0').click
    expect(@driver.find_element(:id, 'sex-0').selected?).to eq true
    expect@driver.find_element(:id, 'sex-1').click
    expect(@driver.find_element(:id, 'sex-1').selected?).to eq true
  end

  it 'should click the radio Experience button' do
    @driver.find_element(:id, 'exp-0').click
    expect(@driver.find_element(:id, 'exp-0').selected?).to eq true
    @driver.find_element(:id, 'exp-1').click
    expect(@driver.find_element(:id, 'exp-1').selected?).to eq true
    @driver.find_element(:id, 'exp-2').click
    expect(@driver.find_element(:id, 'exp-2').selected?).to eq true
    @driver.find_element(:id, 'exp-3').click
    expect(@driver.find_element(:id, 'exp-3').selected?).to eq true
    @driver.find_element(:id, 'exp-4').click
    expect(@driver.find_element(:id, 'exp-4').selected?).to eq true
    @driver.find_element(:id, 'exp-5').click
    expect(@driver.find_element(:id, 'exp-5').selected?).to eq true
    @driver.find_element(:id, 'exp-6').click
    expect(@driver.find_element(:id, 'exp-6').selected?).to eq true
  end

  it 'should click the profession buttons' do
   @driver.find_element(:id, 'profession-0').click
   expect(@driver.find_element(:id, 'profession-0').selected?).to eq true
   @driver.find_element(:id, 'profession-1').click
   expect(@driver.find_element(:id, 'profession-1').selected?).to eq true
  end

  it 'should display and click on the Selenium Automation Hybrid Framework download link' do
    expect(@driver.find_element(:link, 'Selenium Automation Hybrid Framework').displayed?)
    expect(@driver.find_element(:link, 'Selenium Automation Hybrid Framework').click)
  end

  it 'should display and click on the Test File to Download download link' do
    expect(@driver.find_element(:link, 'Test File to Download').displayed?)
    expect(@driver.find_element(:link, 'Test File to Download').click)
  end

  it 'should click the Automation Tool buttons' do
    @driver.find_element(:id, 'tool-0').click
    expect(@driver.find_element(:id, 'tool-0').selected?).to eq true
    @driver.find_element(:id, 'tool-1').click
    expect(@driver.find_element(:id, 'tool-1').selected?).to eq true
    @driver.find_element(:id, 'tool-2').click
    expect(@driver.find_element(:id, 'tool-2').selected?).to eq true
  end

  it 'should click on the Continents drop down selection and select the option of Asia' do
    dropdown_list = @driver.find_element(:id, 'continents')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Asia' }

    selected_option = options.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eq 'Asia'
  end

  it 'should click on the Continents drop down selection and select the option of Europe' do
    dropdown_list = @driver.find_element(:id, 'continents')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Europe' }

    selected_option = options.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eq 'Europe'
  end

  it 'should click on the Continents drop down selection and select the option of Africa' do
    dropdown_list = @driver.find_element(:id, 'continents')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Africa' }

    selected_option = options.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eq 'Africa'
  end

  it 'should click on the Continents drop down selection and select the option of Australia' do
    dropdown_list = @driver.find_element(:id, 'continents')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Australia' }

    selected_option = options.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eq 'Australia'
  end

  it 'should click on the Continents drop down selection and select the option of South America' do
    dropdown_list = @driver.find_element(:id, 'continents')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'South America' }

    selected_option = options.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eq 'South America'
  end

  it 'should click on the Continents drop down selection and select the option of North America' do
    dropdown_list = @driver.find_element(:id, 'continents')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'North America' }

    selected_option = options.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eq 'North America'
  end

  it 'should click on the Continents drop down selection and select the option of Antartica' do
    dropdown_list = @driver.find_element(:id, 'continents')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Antartica' }

    selected_option = options.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eq 'Antartica'
  end

  it 'should select the Browser Commands option from one of the Selenium Commands menu' do
    command_selector = @driver.find_element(:name, 'selenium_commands')
    options = command_selector.find_element(tag_name: 'option')
    options.click if options.text == 'Browser Commands' || options.text == 'Navigation Commands' || options.text == 'Switch Commands' || options.text == 'Wait Commands' || options.text == 'WebElement Commands'

    selected_command = options.text if options.selected?
    expect(selected_command).to eq 'Browser Commands' || 'Navigation Commands' || 'Switch Commands' || 'Wait Commands' || 'WebElement Commands'
  end

end
