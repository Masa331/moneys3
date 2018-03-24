require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/fakt_prij'

module MoneyS3
  module Parsers
    class SeznamFaktPrij
      include BaseParser

      def fakt_prij
        array_of_at(FaktPrij, [:FaktPrij])
      end

      def to_h
        hash = {}

        hash[:fakt_prij] = fakt_prij.map(&:to_h) if raw.key? :FaktPrij

        hash
      end
    end
  end
end