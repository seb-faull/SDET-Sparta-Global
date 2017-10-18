class FizzBuzz

  def numbers
    (1..100).to_a
  end

  def range
    numbers.collect do |i|
      if ((i % 3) == 0) and ((i % 5) == 0)
        'FizzBuzz'
      elsif (i % 3) == 0
        'Fizz'
      else (i % 5) == 0
        'Buzz'
      end
    end
  end
end
