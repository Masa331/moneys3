require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/zakazka'

module MoneyS3
  module Parsers
    class SeznamZakazka
      include BaseParser

      def zakazka
        array_of_at(Zakazka, ['Zakazka'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:zakazka] = zakazka.map(&:to_h) if has? 'Zakazka'

        hash
      end
    end
  end
end