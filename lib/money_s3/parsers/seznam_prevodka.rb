require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/prevodka'

module MoneyS3
  module Parsers
    class SeznamPrevodka
      include BaseParser

      def prevodka
        array_of_at(Prevodka, ['Prevodka'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:prevodka] = prevodka.map(&:to_h) if has? 'Prevodka'

        hash
      end
    end
  end
end