require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Predkontace
      include BaseParser

      def zkrat
        at 'Zkrat'
      end

      def typ
        at 'Typ'
      end

      def popis
        at 'Popis'
      end

      def uc_md
        at 'UcMD'
      end

      def uc_d
        at 'UcD'
      end

      def zauct_dph
        at 'ZauctDPH'
      end

      def uctovat_led
        at 'UctovatLed'
      end

      def typ_ceny
        at 'TypCeny'
      end

      def uc_led_md
        at 'UcLedMD'
      end

      def uc_led_d
        at 'UcLedD'
      end

      def cleneni
        at 'Cleneni'
      end

      def pozn
        at 'Pozn'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:typ] = typ if has? 'Typ'
        hash[:popis] = popis if has? 'Popis'
        hash[:uc_md] = uc_md if has? 'UcMD'
        hash[:uc_d] = uc_d if has? 'UcD'
        hash[:zauct_dph] = zauct_dph if has? 'ZauctDPH'
        hash[:uctovat_led] = uctovat_led if has? 'UctovatLed'
        hash[:typ_ceny] = typ_ceny if has? 'TypCeny'
        hash[:uc_led_md] = uc_led_md if has? 'UcLedMD'
        hash[:uc_led_d] = uc_led_d if has? 'UcLedD'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:pozn] = pozn if has? 'Pozn'

        hash
      end
    end
  end
end