require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Ucet
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def ucet
        at :Ucet
      end

      def b_kod
        at :BKod
      end

      def b_nazev
        at :BNazev
      end

      def to_h
        { zkrat: zkrat,
          ucet: ucet,
          b_kod: b_kod,
          b_nazev: b_nazev
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end