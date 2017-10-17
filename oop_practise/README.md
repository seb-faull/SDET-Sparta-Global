# OOP Refresher (Object Oriented Programming)

In this lab we refreshed our knowledge with object oriented programming.

We created classes that inherited from other classes.

``` 
class Animal < LivingOrganism
```

### We also covered the concept of Encapsulation:
```
class Animal < LivingOrganism

  attr_accessor :breathe, :eat, :drink, :speak, :pro_create

  def initialize
    @breathe = 'inhale and exhale'
    @eat = 'nom nom nom nom'
    @drink = 'gulp gulp'
    @speak = 'hello'
    @pro_create = 'boing'
  end

  def self.traits
    puts 'breathe, eat, drink, speak, pro-create'
  end
  
end
```

attr_accessor is a method that is the 'getter' and 'setter' of attributes for the class.


#### When inheriting from other classes you must require the file where the parent class is in into it:
```
require_relative '../animal'
require_relative '../animal_types/mammals'
# Our dog class/template will inherit from animal and be affected by animal types
class Dog < Animal
  include Mammals

  def speak
    puts 'woof'
  end

  def legs
    Quadraped.new.legs
  end
end
```

#### We were also introduced to Modules. A module is a collection of methods and constants that can be referened elsewhere. A module looks like so
```
module Mammals

    def self.common_mammalian_traits
      puts 'nipples and lactation, live birth, fur'
    end

    class CommonTraits
      def self.feed_young
        puts 'all drink milk at birth'
      end

    end

    class Quadraped < CommonTraits
      def legs
        puts 'I have 4 legs'
      end

    end

    class Biped < CommonTraits
      def legs
      puts 'I have 2 legs'
      end
    end
end
```


