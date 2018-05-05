module MoneyS3
  module Builders
    class PredkontaceType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('UcMD', data[:uc_md]) if data.key? :uc_md
        root << build_element('UcD', data[:uc_d]) if data.key? :uc_d
        root << build_element('ZauctDPH', data[:zauct_dph]) if data.key? :zauct_dph
        root << build_element('UctovatLed', data[:uctovat_led]) if data.key? :uctovat_led
        root << build_element('TypCeny', data[:typ_ceny]) if data.key? :typ_ceny
        root << build_element('UcLedMD', data[:uc_led_md]) if data.key? :uc_led_md
        root << build_element('UcLedD', data[:uc_led_d]) if data.key? :uc_led_d
        root << build_element('Cleneni', data[:cleneni]) if data.key? :cleneni
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn

        root
      end
    end
  end
end