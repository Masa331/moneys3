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
        hash = {}

        hash[:prodejka] = prodejka.map(&:to_h) if raw.key? :Prodejka

        hash
      end
    end
  end
end