module MoneyS3
  module Parsers
    class SlevaType
      include ParserCore::BaseParser

      def limit
        at 'Limit'
      end

      def limit_attributes
        attributes_at 'Limit'
      end

      def sleva
        at 'Sleva'
      end

      def sleva_attributes
        attributes_at 'Sleva'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:limit] = limit if has? 'Limit'
        hash[:limit_attributes] = limit_attributes if has? 'Limit'
        hash[:sleva] = sleva if has? 'Sleva'
        hash[:sleva_attributes] = sleva_attributes if has? 'Sleva'

        hash
      end
    end
  end
end