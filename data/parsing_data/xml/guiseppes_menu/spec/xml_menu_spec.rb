require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
  end

  it "no price should be more than £10" do
    @xml_menu.xpath('//breakfast_menu/food/price').each do |i|
      expect(i.text.gsub('£', '').to_f).to be <= 10
    end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @xml_menu.search('calories').each do |calories|
      if calories.parent.first_element_child.text == 'Full Breakfast'
        expect(calories.text.to_i).to be > 1000
      else
        expect(calories.text.to_i).to be < 1000
      end
    end
  end

  it "should have all waffle dishes stating you get two waffles" do

  end


end
