require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/vydejka'

module MoneyS3
  module Parsers
    class SeznamVydejka
      include BaseParser

      def vydejka
        array_of_at(Vydejka, [:Vydejka])
      end

      def to_h
        { vydejka: vydejka.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end