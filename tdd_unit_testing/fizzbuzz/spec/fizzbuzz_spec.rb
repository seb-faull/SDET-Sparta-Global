require_relative 'spec_helper'

describe FizzBuzz do

  it 'should generate a range between 1 and 100' do
    fb = FizzBuzz.new

    result = fb.numbers

    expect(result).to eq((1..100).to_a)
  end


  it 'should print Fizz for multiples of 3' do
    fb = FizzBuzz.new
    result = fb.range
    expect(result[2]).to eq('Fizz')
  end


  it 'should print Buzz for multiples of 5' do
    fb = FizzBuzz.new
    result = fb.range
    expect(result[4]).to eq('Buzz')
  end


  it 'should print FizzBuzz for multiples of 3 and 5' do
    fb = FizzBuzz.new
    result = fb.range
    expect(result[14]).to eq('FizzBuzz')
  end


end
