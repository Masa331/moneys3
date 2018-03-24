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
        hash = {}

        hash[:ucet] = ucet if raw.key? :Ucet
        hash[:kod_banky] = kod_banky if raw.key? :KodBanky
        hash[:mena] = mena if raw.key? :Mena
        hash[:ucel] = ucel if raw.key? :Ucel

        hash
      end
    end
  end
end