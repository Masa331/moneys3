module MoneyS3
  module Parsers
    class SeznamVyrobka
      include ParserCore::BaseParser

      def vyrobka
        array_of_at(Vyrobka, ['Vyrobka'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:vyrobka] = vyrobka.map(&:to_h_with_attrs) if has? 'Vyrobka'

        hash
      end
    end
  end
end