module MoneyS3
  module Parsers
    class SeznamCinnosti
      include ParserCore::BaseParser

      def cinnost
        array_of_at(Cinnost, ['Cinnost'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:cinnost] = cinnost.map(&:to_h) if has? 'Cinnost'

        hash
      end
    end
  end
end