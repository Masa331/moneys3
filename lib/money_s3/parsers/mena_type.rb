require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class MenaType
      include BaseParser

      def kod
        at :Kod
      end

      def mnozstvi
        at :Mnozstvi
      end

      def kurs
        at :Kurs
      end

      def to_h
        { kod: kod,
          mnozstvi: mnozstvi,
          kurs: kurs
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end