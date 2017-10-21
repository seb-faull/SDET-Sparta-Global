require 'httparty'
require 'json'

puts HTTParty.get('https://api.postcodes.io/postcodes/nw101np').body
# postcodes_call = HTTParty.get('https://api.postcodes.io/postcodes/nw101np')
#
# puts postcodes_call

#Methods:
# .code
# .message
# .headers
# .inspect
# .headers.inspect
# .body
# .class
