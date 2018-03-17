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
        { limit: limit,
          cena: cena,
          sleva: sleva
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end