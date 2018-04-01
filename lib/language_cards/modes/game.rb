
module LanguageCards
  module Modes
    class Game
      def initialize card_set
        @card_set = card_set
        @index = 0
        @current = nil
      end

      def current
        @current or raise "Current grapheme not yet set!"
      end

      # @return Grapheme Returns a random grapheme
      def sample
        @current = @card_set.sample
      end

      # Iterator for cycling through all translations sequentially.
      # @return Grapheme Returns a random grapheme
      def next
        value = @card_set[@index % @card_set.length]
        @index += 1
        @current = value
      end
    end
  end
end
