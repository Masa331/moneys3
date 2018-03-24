require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/zasoba'

module MoneyS3
  module Parsers
    class SeznamZasoba
      include BaseParser

      def zasoba
        array_of_at(Zasoba, ['Zasoba'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:zasoba] = zasoba.map(&:to_h) if has? 'Zasoba'

        hash
      end
    end
  end
end