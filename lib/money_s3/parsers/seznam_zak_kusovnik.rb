require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/kusovnik_type'

module MoneyS3
  module Parsers
    class SeznamZakKusovnik
      include BaseParser

      def zak_kusovnik
        array_of_at(KusovnikType, [:ZakKusovnik])
      end

      def to_h
        { zak_kusovnik: zak_kusovnik.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end