module MoneyS3
  module Parsers
    class StavZasobyType
      include ParserCore::BaseParser

      def zasoba
        at 'Zasoba'
      end

      def zasoba_attributes
        attributes_at 'Zasoba'
      end

      def rezervace
        at 'Rezervace'
      end

      def rezervace_attributes
        attributes_at 'Rezervace'
      end

      def objednano
        at 'Objednano'
      end

      def objednano_attributes
        attributes_at 'Objednano'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zasoba] = zasoba if has? 'Zasoba'
        hash[:zasoba_attributes] = zasoba_attributes if has? 'Zasoba'
        hash[:rezervace] = rezervace if has? 'Rezervace'
        hash[:rezervace_attributes] = rezervace_attributes if has? 'Rezervace'
        hash[:objednano] = objednano if has? 'Objednano'
        hash[:objednano_attributes] = objednano_attributes if has? 'Objednano'

        hash
      end
    end
  end
end