require 'faker'

# puts Faker::Business.credit_card_number
# puts Faker::FamilyGuy.character
# puts Faker::DrWho.character
#
# puts Faker::MostInterestingManInTheWorld.quote

fg_c = Faker::FamilyGuy.character
r_m_c = Faker::RickAndMorty.character
quote = Faker::Hipster.sentence

puts "#{fg_c} from Family Guy " + "and #{r_m_c} from Rick and Morty " + "both said in an episode " + "\"#{quote}\""
