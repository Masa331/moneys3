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
        { nab_prij: nab_prij.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end