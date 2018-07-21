module MoneyS3
  module Parsers
    class PredkontaceType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def uc_md
        at 'UcMD'
      end

      def uc_md_attributes
        attributes_at 'UcMD'
      end

      def uc_d
        at 'UcD'
      end

      def uc_d_attributes
        attributes_at 'UcD'
      end

      def zauct_dph
        at 'ZauctDPH'
      end

      def zauct_dph_attributes
        attributes_at 'ZauctDPH'
      end

      def uctovat_led
        at 'UctovatLed'
      end

      def uctovat_led_attributes
        attributes_at 'UctovatLed'
      end

      def typ_ceny
        at 'TypCeny'
      end

      def typ_ceny_attributes
        attributes_at 'TypCeny'
      end

      def uc_led_md
        at 'UcLedMD'
      end

      def uc_led_md_attributes
        attributes_at 'UcLedMD'
      end

      def uc_led_d
        at 'UcLedD'
      end

      def uc_led_d_attributes
        attributes_at 'UcLedD'
      end

      def cleneni
        at 'Cleneni'
      end

      def cleneni_attributes
        attributes_at 'Cleneni'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:uc_md] = uc_md if has? 'UcMD'
        hash[:uc_md_attributes] = uc_md_attributes if has? 'UcMD'
        hash[:uc_d] = uc_d if has? 'UcD'
        hash[:uc_d_attributes] = uc_d_attributes if has? 'UcD'
        hash[:zauct_dph] = zauct_dph if has? 'ZauctDPH'
        hash[:zauct_dph_attributes] = zauct_dph_attributes if has? 'ZauctDPH'
        hash[:uctovat_led] = uctovat_led if has? 'UctovatLed'
        hash[:uctovat_led_attributes] = uctovat_led_attributes if has? 'UctovatLed'
        hash[:typ_ceny] = typ_ceny if has? 'TypCeny'
        hash[:typ_ceny_attributes] = typ_ceny_attributes if has? 'TypCeny'
        hash[:uc_led_md] = uc_led_md if has? 'UcLedMD'
        hash[:uc_led_md_attributes] = uc_led_md_attributes if has? 'UcLedMD'
        hash[:uc_led_d] = uc_led_d if has? 'UcLedD'
        hash[:uc_led_d_attributes] = uc_led_d_attributes if has? 'UcLedD'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:cleneni_attributes] = cleneni_attributes if has? 'Cleneni'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'

        hash
      end
    end
  end
end