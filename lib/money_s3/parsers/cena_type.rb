require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class CenaType
      include BaseParser

      def limit
        at :Limit
      end

      def cena
        at :Cena
      end

      def sleva
        at :Sleva
      end

      def to_h
        hash = {}

        hash[:limit] = limit if raw.key? :Limit
        hash[:cena] = cena if raw.key? :Cena
        hash[:sleva] = sleva if raw.key? :Sleva

        hash
      end
    end
  end
end