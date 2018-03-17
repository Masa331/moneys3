require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class AdresaType
      include BaseParser

      def ulice
        at :Ulice
      end

      def misto
        at :Misto
      end

      def psc
        at :PSC
      end

      def stat
        at :Stat
      end

      def kod_statu
        at :KodStatu
      end

      def to_h
        { ulice: ulice,
          misto: misto,
          psc: psc,
          stat: stat,
          kod_statu: kod_statu
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end