require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/zakazka'

module MoneyS3
  module Parsers
    class SeznamZakazka
      include BaseParser

      def zakazka
        array_of_at(Zakazka, [:Zakazka])
      end

      def to_h
        { zakazka: zakazka.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end