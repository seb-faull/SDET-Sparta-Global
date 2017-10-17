require_relative 'spec_helper'

describe FizzBuzz do

  it 'should generate a range between 1 and 100' do
    fb = FizzBuzz.new

    result = fb.numbers

    expect(result).to eq((1..100).to_a)
  end


  it 'should print Fizz for multiples of 3' do
    fb = FizzBuzz.new
    result = game.sequence
    expect(result[2]).to eq('Fizz')
  end


end
