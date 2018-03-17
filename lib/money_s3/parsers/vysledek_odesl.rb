require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class VysledekOdesl
      include BaseParser

      def chyba
        at :Chyba
      end

      def varovani
        array_of_at(String, [:Varovani])
      end

      def to_h
        { chyba: chyba,
          varovani: varovani
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end