# This is our Animal class which will inherit from living organism
require_relative './living_organism'

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

# wallace = Animal.new
#
# wallace.speak = 'wuaaaarrghh'
#
# puts wallace.speak
