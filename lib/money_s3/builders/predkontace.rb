require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Predkontace
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :uc_md
          element = Ox::Element.new('UcMD')
          element << attributes[:uc_md] if attributes[:uc_md]
          root << element
        end

        if attributes.key? :uc_d
          element = Ox::Element.new('UcD')
          element << attributes[:uc_d] if attributes[:uc_d]
          root << element
        end

        if attributes.key? :zauct_dph
          element = Ox::Element.new('ZauctDPH')
          element << attributes[:zauct_dph] if attributes[:zauct_dph]
          root << element
        end

        if attributes.key? :uctovat_led
          element = Ox::Element.new('UctovatLed')
          element << attributes[:uctovat_led] if attributes[:uctovat_led]
          root << element
        end

        if attributes.key? :typ_ceny
          element = Ox::Element.new('TypCeny')
          element << attributes[:typ_ceny] if attributes[:typ_ceny]
          root << element
        end

        if attributes.key? :uc_led_md
          element = Ox::Element.new('UcLedMD')
          element << attributes[:uc_led_md] if attributes[:uc_led_md]
          root << element
        end

        if attributes.key? :uc_led_d
          element = Ox::Element.new('UcLedD')
          element << attributes[:uc_led_d] if attributes[:uc_led_d]
          root << element
        end

        if attributes.key? :cleneni
          element = Ox::Element.new('Cleneni')
          element << attributes[:cleneni] if attributes[:cleneni]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        root
      end
    end
  end
end