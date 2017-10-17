class FizzBuzz

  "Write fizzbuzz here"

  def numbers
    (1..100).to_a
  end

  def sequence
  numbers.collect do |i|
    if (i % 3) == 0
      'Fizz'
    else
      i
    end
  end

end
