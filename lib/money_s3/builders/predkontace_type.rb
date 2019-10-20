module MoneyS3
  module Builders
    class PredkontaceType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('UcMD', data[:uc_md], data[:uc_md_attributes]) if data.key? :uc_md
        root << build_element('UcD', data[:uc_d], data[:uc_d_attributes]) if data.key? :uc_d
        root << build_element('ZauctDPH', data[:zauct_dph], data[:zauct_dph_attributes]) if data.key? :zauct_dph
        root << build_element('UctovatLed', data[:uctovat_led], data[:uctovat_led_attributes]) if data.key? :uctovat_led
        root << build_element('TypCeny', data[:typ_ceny], data[:typ_ceny_attributes]) if data.key? :typ_ceny
        root << build_element('UcLedMD', data[:uc_led_md], data[:uc_led_md_attributes]) if data.key? :uc_led_md
        root << build_element('UcLedD', data[:uc_led_d], data[:uc_led_d_attributes]) if data.key? :uc_led_d
        root << build_element('Cleneni', data[:cleneni], data[:cleneni_attributes]) if data.key? :cleneni
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn

        root
      end
    end
  end
end