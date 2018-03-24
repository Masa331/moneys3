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
        hash = {}

        hash[:ulice] = ulice if raw.key? :Ulice
        hash[:misto] = misto if raw.key? :Misto
        hash[:psc] = psc if raw.key? :PSC
        hash[:stat] = stat if raw.key? :Stat
        hash[:kod_statu] = kod_statu if raw.key? :KodStatu

        hash
      end
    end
  end
end