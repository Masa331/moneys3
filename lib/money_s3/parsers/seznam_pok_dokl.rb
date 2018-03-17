require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/pok_dokl'

module MoneyS3
  module Parsers
    class SeznamPokDokl
      include BaseParser

      def pok_dokl
        array_of_at(PokDokl, [:PokDokl])
      end

      def to_h
        { pok_dokl: pok_dokl.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end