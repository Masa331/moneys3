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
        { zkrat: zkrat,
          typ: typ,
          popis: popis,
          uc_md: uc_md,
          uc_d: uc_d,
          zauct_dph: zauct_dph,
          uctovat_led: uctovat_led,
          typ_ceny: typ_ceny,
          uc_led_md: uc_led_md,
          uc_led_d: uc_led_d,
          cleneni: cleneni,
          pozn: pozn
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end