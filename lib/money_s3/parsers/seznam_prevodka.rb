module MoneyS3
  module Parsers
    class SeznamPrevodka
      include ParserCore::BaseParser

      def prevodka
        array_of_at(Prevodka, ['Prevodka'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:prevodka] = prevodka.map(&:to_h) if has? 'Prevodka'

        hash
      end
    end
  end
end