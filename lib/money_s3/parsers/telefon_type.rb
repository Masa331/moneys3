require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class TelefonType
      include BaseParser

      def pred
        at :Pred
      end

      def cislo
        at :Cislo
      end

      def klap
        at :Klap
      end

      def to_h
        { pred: pred,
          cislo: cislo,
          klap: klap
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end