require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/prodejka'

module MoneyS3
  module Parsers
    class SeznamProdejka
      include BaseParser

      def prodejka
        array_of_at(Prodejka, [:Prodejka])
      end

      def to_h
        { prodejka: prodejka.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end