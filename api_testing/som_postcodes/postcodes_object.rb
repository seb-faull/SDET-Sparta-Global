require 'httparty'
require 'json'

class PostcodesService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def single_postcode_call(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def multiple_postcode_service(postcodes_array)
    JSON.parse(self.class.post("/postcodes", body: {"postcodes" => postcodes_array }).body)
  end

end

# postcodes_service = PostcodesService.new
#
# puts postcodes_service.multiple_postcode_service(['nw10 1np', 'se9 6rj'])


# single_p = PostcodesService.new
#
# p single_p.single_postcode_call('nw101np')
