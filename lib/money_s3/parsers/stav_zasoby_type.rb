module MoneyS3
  module Parsers
    class StavZasobyType
      include ParserCore::BaseParser

      def zasoba
        at 'Zasoba'
      end

      def rezervace
        at 'Rezervace'
      end

      def objednano
        at 'Objednano'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zasoba] = zasoba if has? 'Zasoba'
        hash[:rezervace] = rezervace if has? 'Rezervace'
        hash[:objednano] = objednano if has? 'Objednano'

        hash
      end
    end
  end
end