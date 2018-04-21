module MoneyS3
  module Parsers
    class SlevaType
      include BaseParser

      def limit
        at 'Limit'
      end

      def sleva
        at 'Sleva'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:limit] = limit if has? 'Limit'
        hash[:sleva] = sleva if has? 'Sleva'

        hash
      end
    end
  end
end