skyscraper_ground_floor = {lobby: 'reception'}

# p skyscraper_ground_floor[:lobby]

skyscraper_first_floor = {
  # braindrugs: 'drugs',
  # aqualand: 'LSD factory',
  # unicorns: 'dreams'
  "braindrugs" => 'drugs',
  "aqualand" => {
    prod1: {
      lsdtype1: 'the good stuff',
      lsdtype2: 'the scary stuff'
      },
    prod2: 'big doobies'
  },
  "unicorns" => ['dreams', 'ice creams']
}

p skyscraper_first_floor['aqualand'][:prod1]

# p skyscraper_first_floor.values

# skyscraper_first_floor.each do |key, value|
#   puts key, value
# end
