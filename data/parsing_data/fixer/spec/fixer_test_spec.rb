require 'spec_helper'

describe 'Fixer tests' do

  before(:all) do
    @json = JSON.parse(File.read('fixer.json'))
  end


  it 'should have a "base" key with a value of "EUR" for the data object' do
    expect(@json).to have_key("base")
    expect(@json["base"]).to eq("EUR")
  end

  it 'should have a "date" key with a value of "2017-07-26" for the data object' do
    expect(@json).to have_key("date")
    expect(@json["date"]).to eq("2017-07-26")
  end

  it 'should have a "rates" key with a hash value' do
    expect(@json).to have_key("rates")
    expect(@json["rates"]).to be_kind_of(Hash)
  end

  it 'should have their keys equal to the data type of a string' do
    expect(@json["rates"]).to be_kind_of(String)
  end

  it 'all rates should be have a data type of float' do

  end


end
