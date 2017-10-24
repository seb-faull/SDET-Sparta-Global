require 'spec_helper'

describe 'Single Postcode tests' do

  before(:each) do
    service = PostcodesService.new
    @api_test = service.single_postcode_call('nw101np')
  end

  it 'Quality should have a range between 1 and 9' do
    expect(@api_test['result']['quality']).to be_between(1,9)
  end

  it 'Country should have a string value' do
    expect(@api_test['result']['country']).to be_kind_of(String)
  end

  it 'Parliamentary Constituency should have a string value or Nil' do
    if @api_test['result']['parliamentary_constituency'].class == String
      expect(@api_test['result']['parliamentary_constituency']).to be_kind_of(String)
    elsif @api_test['result']['parliamentary_constituency'].class == NilClass
      expect(@api_test['result']['parliamentary_constituency']).to be_falsey
    end
  end

end
