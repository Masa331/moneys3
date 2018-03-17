require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Predkontace
      include BaseBuilder

      attr_accessor :zkrat, :typ, :popis, :uc_md, :uc_d, :zauct_dph, :uctovat_led, :typ_ceny, :uc_led_md, :uc_led_d, :cleneni, :pozn

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('UcMD') << uc_md) if uc_md
        root << (Ox::Element.new('UcD') << uc_d) if uc_d
        root << (Ox::Element.new('ZauctDPH') << zauct_dph) if zauct_dph
        root << (Ox::Element.new('UctovatLed') << uctovat_led) if uctovat_led
        root << (Ox::Element.new('TypCeny') << typ_ceny) if typ_ceny
        root << (Ox::Element.new('UcLedMD') << uc_led_md) if uc_led_md
        root << (Ox::Element.new('UcLedD') << uc_led_d) if uc_led_d
        root << (Ox::Element.new('Cleneni') << cleneni) if cleneni
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        root
      end
    end
  end
end