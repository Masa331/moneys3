require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/dl_prij'

module MoneyS3
  module Parsers
    class SeznamDLPrij
      include BaseParser

      def dl_prij
        array_of_at(DLPrij, [:DLPrij])
      end

      def to_h
        { dl_prij: dl_prij.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end