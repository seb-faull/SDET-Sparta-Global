require 'spec_helper'

describe 'bbc sign in error' do

  before(:all) do
    @bbc_site = BbcSite.new
  end

  it 'should display an error when using incorrect login details' do
    @bbc_site.homepage.visit_home_page
    @bbc_site.homepage.click_sign_in_link
    @bbc_site.signinpage.input_username('sgdfasgd')
    @bbc_site.signinpage.input_password('dfgsdfsgddshfj')
    @bbc_site.signinpage.click_submit_button
  end
  
end
