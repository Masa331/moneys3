module MoneyS3
  module Parsers
    class SeznamVyrobka
      include ParserCore::BaseParser

      def vyrobka
        array_of_at(Vyrobka, ['Vyrobka'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:vyrobka] = vyrobka.map(&:to_h) if has? 'Vyrobka'

        hash
      end
    end
  end
end