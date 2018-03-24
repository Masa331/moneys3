require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/popt_prij'

module MoneyS3
  module Parsers
    class SeznamPoptPrij
      include BaseParser

      def popt_prij
        array_of_at(PoptPrij, [:PoptPrij])
      end

      def to_h
        hash = {}

        hash[:popt_prij] = popt_prij.map(&:to_h) if raw.key? :PoptPrij

        hash
      end
    end
  end
end