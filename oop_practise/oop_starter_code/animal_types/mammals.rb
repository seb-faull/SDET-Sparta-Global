# This is the Mammals module that should be included for all mammals
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

# flipper = Mammals::Quadraped.new
#
# flipper.legs
