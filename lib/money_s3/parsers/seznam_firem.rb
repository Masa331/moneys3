require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/firma'

module MoneyS3
  module Parsers
    class SeznamFirem
      include BaseParser

      def firma
        array_of_at(Firma, [:Firma])
      end

      def to_h
        { firma: firma.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end