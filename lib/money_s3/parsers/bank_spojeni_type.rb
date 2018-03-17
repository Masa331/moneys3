require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class BankSpojeniType
      include BaseParser

      def ucet
        at :Ucet
      end

      def kod_banky
        at :KodBanky
      end

      def mena
        at :Mena
      end

      def ucel
        at :Ucel
      end

      def to_h
        { ucet: ucet,
          kod_banky: kod_banky,
          mena: mena,
          ucel: ucel
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end