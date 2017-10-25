require 'spec_helper'

describe 'axa get quote' do

  before(:all) do
    @driver = Capybara::Session.new(:chrome)
    @driver.visit('https://www.axappphealthcare.co.uk/')
  end

  it 'should open the homepage' do
    expect(@driver.current_url).to eq 'https://www.axappphealthcare.co.uk/'
    @driver.find(:xpath, '//*[@id="mainForm"]/div[3]/div[1]/div/div[1]/div[1]/a/img').visible?
  end

  it 'should click the personal health care insurance quote button' do
    @driver.find(:xpath, '//*[@id="ctl00_cphMain_dz5_columnDisplay_ctl00_controlcolumn_ctl00_WidgetHost_WidgetHost_widget_CB"]/div/div/div/div[1]/div/div[1]/div/a').visible?
    @driver.find(:xpath, '//*[@id="ctl00_cphMain_dz5_columnDisplay_ctl00_controlcolumn_ctl00_WidgetHost_WidgetHost_widget_CB"]/div/div/div/div[1]/div/div[1]/div/a').click
    @driver.switch_to_window(@driver.windows.last)
  end

  it 'should click on the Title dropdown and select the option of MR.' do
    dropdown_list = @driver.find(:xpath, '//*[@id="ddlTitle"]')
    options = dropdown_list.find(tag_name: 'option')
    options.each { |option| option.click if option.text == 'Mr' }

    selected_option = options.map { |option| option.text if option.selected? }.join
    expect(selected_option).to eq 'Mr'
  end



end
