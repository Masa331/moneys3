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
        hash = {}

        hash[:chyba] = chyba if raw.key? :Chyba
        hash[:varovani] = varovani if raw.key? :Varovani

        hash
      end
    end
  end
end