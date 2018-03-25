require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class CenaType
      include BaseParser

      def limit
        at 'Limit'
      end

      def cena
        at 'Cena'
      end

      def sleva
        at 'Sleva'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:limit] = limit if has? 'Limit'
        hash[:cena] = cena if has? 'Cena'
        hash[:sleva] = sleva if has? 'Sleva'

        hash
      end
    end
  end
end