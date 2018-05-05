module MoneyS3
  module Parsers
    class CenaType
      include ParserCore::BaseParser

      def limit
        at 'Limit'
      end

      def cena
        at 'Cena'
      end

      def sleva
        at 'Sleva'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:limit] = limit if has? 'Limit'
        hash[:cena] = cena if has? 'Cena'
        hash[:sleva] = sleva if has? 'Sleva'

        hash
      end
    end
  end
end