require 'spec_helper'

describe 'Httparty tests' do

  before(:all) do
    @json = JSON.parse(HTTParty.get('https://api.postcodes.io/postcodes/nw101np').body)
  end

  it 'Postcodes should have a single space in between two character blocks' do
    expect(@json['result']['postcode']).to include('')
  end

  it 'Quality should have a range between 1 and 9' do
    expect(@json['result']['quality']).to be_between(1,9)
  end

  it 'Should check that the quality does not equal to 7' do
    expect(@json['result']['quality']).not_to be 7
  end

  it 'Eastings should have an integer value or Nil' do
    if @json['result']['eastings'].class == Integer
      expect(@json['result']['eastings']).to be_kind_of(Integer)
    elsif @json['result']['eastings'].class == NilClass
      expect(@json['result']['eastings']).to be_falsey
    end
  end

  it 'Northings should have an integer value or Nil' do
    if @json['result']['northings'].class == Integer
      expect(@json['result']['northings']).to be_kind_of(Integer)
    elsif @json['result']['northings'].class == NilClass
      expect(@json['result']['northings']).to be_falsey
    end
  end

  it 'Country should have a string value' do
    expect(@json['result']['country']).to be_kind_of(String)
  end

  it 'NHS_HA should have a string value or Nil' do
    if @json['result']['nhs_ha'].class == String
      expect(@json['result']['nhs_ha']).to be_kind_of(String)
    elsif @json['result']['nhs_ha'].class == NilClass
      expect(@json['result']['nhs_ha']).to be_falsey
    end
  end

  it 'Admin County should have a string value or Nil' do
    if @json['result']['codes']['admin_county'].class == String
      expect(@json['result']['codes']['admin_county']).to be_kind_of(String)
    elsif @json['result']['codes']['admin_county'].class == NilClass
      expect(@json['result']['codes']['admin_county']).to be_falsey
    end
  end

  it 'Admin District should have a string value or Nil' do
    if @json['result']['codes']['admin_district'].class == String
      expect(@json['result']['codes']['admin_district']).to be_kind_of(String)
    elsif @json['result']['codes']['admin_district'].class == NilClass
      expect(@json['result']['codes']['admin_district']).to be_falsey
    end
  end

  it 'Admin Ward should have a string value or Nil' do
    if @json['result']['codes']['admin_ward'].class == String
      expect(@json['result']['codes']['admin_ward']).to be_kind_of(String)
    elsif @json['result']['codes']['admin_ward'].class == NilClass
      expect(@json['result']['codes']['admin_ward']).to be_falsey
    end
  end

  it 'Longitude should have a Float value' do
    expect(@json['result']['longitude']).to be_kind_of(Float)
  end

  it 'Latitude should have a double Float value' do
    expect(@json['result']['latitude']).to be_kind_of(Float)
  end

  it 'Parliamentary Constituency should have a string value or Nil' do
    if @json['result']['parliamentary_constituency'].class == String
      expect(@json['result']['parliamentary_constituency']).to be_kind_of(String)
    elsif @json['result']['parliamentary_constituency'].class == NilClass
      expect(@json['result']['parliamentary_constituency']).to be_falsey
    end
  end

  it 'European Electoral Region should have a string value or Nil' do
    if @json['result']['european_electoral_region'].class == String
      expect(@json['result']['european_electoral_region']).to be_kind_of(String)
    elsif @json['result']['european_electoral_region'].class == NilClass
      expect(@json['result']['european_electoral_region']).to be_falsey
    end
  end

  it 'Primary Care Trust should have a string value or Nil' do
    if @json['result']['primary_care_trust'].class == String
      expect(@json['result']['primary_care_trust']).to be_kind_of(String)
    elsif @json['result']['primary_care_trust'].class == NilClass
      expect(@json['result']['primary_care_trust']).to be_falsey
    end
  end

  it 'Region should have a string value or Nil' do
    if @json['result']['region'].class == String
      expect(@json['result']['region']).to be_kind_of(String)
    elsif @json['result']['region'].class == NilClass
      expect(@json['result']['region']).to be_falsey
    end
  end

  it 'Parish should have a string value or Nil' do
    if @json['result']['parish'].class == String
      expect(@json['result']['parish']).to be_kind_of(String)
    elsif @json['result']['parish'].class == NilClass
      expect(@json['result']['parish']).to be_falsey
    end
  end

  it 'LSOA should have a string value or Nil' do
    if @json['result']['lsoa'].class == String
      expect(@json['result']['lsoa']).to be_kind_of(String)
    elsif @json['result']['lsoa'].class == NilClass
      expect(@json['result']['lsoa']).to be_falsey
    end
  end

  it 'MSOA should have a string value or Nil' do
    if @json['result']['msoa'].class == String
      expect(@json['result']['msoa']).to be_kind_of(String)
    elsif @json['result']['msoa'].class == NilClass
      expect(@json['result']['msoa']).to be_falsey
    end
  end

  it 'CCG should have a string value or Nil' do
    if @json['result']['ccg'].class == String
      expect(@json['result']['ccg']).to be_kind_of(String)
    elsif @json['result']['ccg'].class == NilClass
      expect(@json['result']['ccg']).to be_falsey
    end
  end

  it 'NUTS should have a string value or Nil' do
    if @json['result']['nuts'].class == String
      expect(@json['result']['nuts']).to be_kind_of(String)
    elsif @json['result']['nuts'].class == NilClass
      expect(@json['result']['nuts']).to be_falsey
    end
  end

  it 'Admin District code should have a string value or Nil' do
    if @json['result']['codes']['admin_district'].class == String
      expect(@json['result']['codes']['admin_district']).to be_kind_of(String)
    elsif @json['result']['codes']['admin_district'].class == NilClass
      expect(@json['result']['codes']['admin_district']).to be_falsey
    end
  end


  it 'Admin County code should have a string value or Nil' do
    if @json['result']['codes']['admin_county'].class == String
      expect(@json['result']['codes']['admin_county']).to be_kind_of(String)
    elsif @json['result']['codes']['admin_county'].class == NilClass
      expect(@json['result']['codes']['admin_county']).to be_falsey
    end
  end


  it 'Admin Ward code should have a string value or Nil' do
    if @json['result']['codes']['admin_ward'].class == String
      expect(@json['result']['codes']['admin_ward']).to be_kind_of(String)
    elsif @json['result']['codes']['admin_ward'].class == NilClass
      expect(@json['result']['codes']['admin_ward']).to be_falsey
    end
  end

  it 'Parish code should have a string value or Nil' do
    if @json['result']['codes']['parish'].class == String
      expect(@json['result']['codes']['parish']).to be_kind_of(String)
    elsif @json['result']['codes']['parish'].class == NilClass
      expect(@json['result']['codes']['parish']).to be_falsey
    end
  end

  it 'Parliamentary Constituency code should have a string value or Nil' do
    if @json['result']['codes']['parliamentary_constituency'].class == String
      expect(@json['result']['codes']['parliamentary_constituency']).to be_kind_of(String)
    elsif @json['result']['codes']['parliamentary_constituency'].class == NilClass
      expect(@json['result']['codes']['parliamentary_constituency']).to be_falsey
    end
  end

  it 'CCG code should have a string value or Nil' do
    if @json['result']['codes']['ccg'].class == String
      expect(@json['result']['codes']['ccg']).to be_kind_of(String)
    elsif @json['result']['codes']['ccg'].class == NilClass
      expect(@json['result']['codes']['ccg']).to be_falsey
    end
  end

  it 'NUTS code should have a string value or Nil' do
    if @json['result']['codes']['nuts'].class == String
      expect(@json['result']['codes']['nuts']).to be_kind_of(String)
    elsif @json['result']['codes']['nuts'].class == NilClass
      expect(@json['result']['codes']['nuts']).to be_falsey
    end
  end

end
