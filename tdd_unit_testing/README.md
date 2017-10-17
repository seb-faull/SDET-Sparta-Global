# FizzBuzz TDD (Test Driven Development)

## Technology used:

### - RSPEC

This Lab I successfully tested FizzBuzz between 1..100 in an array
For this I continually unit tested code

### The tests runs in 4 parts:
 1) It should generate a range between 1 and 100
 2) It should print Fizz for multiples of 3 - ***i % 3 == 0***
 3) It should print Buzz for multiples of 5 - ***i % 5 == 0***
 4) It should print FizzBuzz for multiples of 3 and 5 - ***i % 3  &&  i % 5 == 0***
 
 ```
   def numbers
    (1..100).to_a
  end

  def range
    numbers.collect do |i|
      if ((i % 3) == 0) and ((i % 5) == 0)
        'FizzBuzz'
      elsif (i % 3) == 0
        'Fizz'
      elsif (i % 5) == 0
        'Buzz'
      else
        i
      end
    end
  end
```

### Testing
To run the tests in terminal ensure you are in the fizzbuzz directory and you have the latest version of rspec installed.

Run the command
```
rspec
```
