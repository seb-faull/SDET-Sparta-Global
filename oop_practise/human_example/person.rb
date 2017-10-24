class Person

  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def details
    puts "Their name is #{name} and is #{age}"
  end

end



seb = Person.new('Seb', 23)
henry = Person.new('Henry', 21)

# p seb.age
# puts henry.age

seb.details
henry.details
