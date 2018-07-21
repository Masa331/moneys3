module MoneyS3
  module Parsers
    class SeznamZasoba
      include ParserCore::BaseParser

      def zasoba
        array_of_at(Zasoba, ['Zasoba'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zasoba] = zasoba.map(&:to_h) if has? 'Zasoba'

        hash
      end
    end
  end
end