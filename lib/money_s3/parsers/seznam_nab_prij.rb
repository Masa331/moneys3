require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/nab_prij'

module MoneyS3
  module Parsers
    class SeznamNabPrij
      include BaseParser

      def nab_prij
        array_of_at(NabPrij, [:NabPrij])
      end

      def to_h
        hash = {}

        hash[:nab_prij] = nab_prij.map(&:to_h) if raw.key? :NabPrij

        hash
      end
    end
  end
end