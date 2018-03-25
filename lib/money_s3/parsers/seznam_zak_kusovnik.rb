require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/kusovnik_type'

module MoneyS3
  module Parsers
    class SeznamZakKusovnik
      include BaseParser

      def zak_kusovnik
        array_of_at(KusovnikType, ['ZakKusovnik'])
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:zak_kusovnik] = zak_kusovnik.map(&:to_h) if has? 'ZakKusovnik'

        hash
      end
    end
  end
end