require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Predkontace
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def typ
        at :Typ
      end

      def popis
        at :Popis
      end

      def uc_md
        at :UcMD
      end

      def uc_d
        at :UcD
      end

      def zauct_dph
        at :ZauctDPH
      end

      def uctovat_led
        at :UctovatLed
      end

      def typ_ceny
        at :TypCeny
      end

      def uc_led_md
        at :UcLedMD
      end

      def uc_led_d
        at :UcLedD
      end

      def cleneni
        at :Cleneni
      end

      def pozn
        at :Pozn
      end

      def to_h
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:typ] = typ if raw.key? :Typ
        hash[:popis] = popis if raw.key? :Popis
        hash[:uc_md] = uc_md if raw.key? :UcMD
        hash[:uc_d] = uc_d if raw.key? :UcD
        hash[:zauct_dph] = zauct_dph if raw.key? :ZauctDPH
        hash[:uctovat_led] = uctovat_led if raw.key? :UctovatLed
        hash[:typ_ceny] = typ_ceny if raw.key? :TypCeny
        hash[:uc_led_md] = uc_led_md if raw.key? :UcLedMD
        hash[:uc_led_d] = uc_led_d if raw.key? :UcLedD
        hash[:cleneni] = cleneni if raw.key? :Cleneni
        hash[:pozn] = pozn if raw.key? :Pozn

        hash
      end
    end
  end
end