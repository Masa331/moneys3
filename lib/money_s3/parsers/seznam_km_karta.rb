require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/km_karta'

module MoneyS3
  module Parsers
    class SeznamKmKarta
      include BaseParser

      def km_karta
        array_of_at(KmKarta, [:KmKarta])
      end

      def to_h
        hash = {}

        hash[:km_karta] = km_karta.map(&:to_h) if raw.key? :KmKarta

        hash
      end
    end
  end
end