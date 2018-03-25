require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/firma'

module MoneyS3
  module Parsers
    class SeznamFirem
      include BaseParser

      def firma
        array_of_at(Firma, ['Firma'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:firma] = firma.map(&:to_h) if has? 'Firma'

        hash
      end
    end
  end
end