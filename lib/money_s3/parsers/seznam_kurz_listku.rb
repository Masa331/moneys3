require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/kurz_listek'

module MoneyS3
  module Parsers
    class SeznamKurzListku
      include BaseParser

      def kurz_listek
        array_of_at(KurzListek, [:KurzListek])
      end

      def to_h
        { kurz_listek: kurz_listek.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end