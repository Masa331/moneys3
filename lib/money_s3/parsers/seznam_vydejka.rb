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
        hash = {}

        hash[:vydejka] = vydejka.map(&:to_h) if has? :Vydejka

        hash
      end
    end
  end
end