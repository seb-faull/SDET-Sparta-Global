require 'spec_helper'


describe Calculator do

  it 'should correctly add two numbers together' do
    calc = Calculator.new
    expect(calc.add(2, 2)).to eq 4
  end


end
