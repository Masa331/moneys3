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
        { km_karta: km_karta.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end