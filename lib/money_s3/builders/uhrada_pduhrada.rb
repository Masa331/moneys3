module MoneyS3
  module Builders
    class UhradaPduhrada
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Poradi', data[:poradi], data[:poradi_attributes]) if data.key? :poradi
        root << build_element('Kontace', data[:kontace], data[:kontace_attributes]) if data.key? :kontace
        root << build_element('Stredisko', data[:stredisko], data[:stredisko_attributes]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka], data[:zakazka_attributes]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost], data[:cinnost_attributes]) if data.key? :cinnost
        root << build_element('Zaklad', data[:zaklad], data[:zaklad_attributes]) if data.key? :zaklad
        root << build_element('DPHZS', data[:dphzs], data[:dphzs_attributes]) if data.key? :dphzs
        root << build_element('DPHSS', data[:dphss], data[:dphss_attributes]) if data.key? :dphss
        root << build_element('WLZaklady', data[:wl_zaklady], data[:wl_zaklady_attributes]) if data.key? :wl_zaklady
        root << build_element('WLDPH1', data[:wldph1], data[:wldph1_attributes]) if data.key? :wldph1
        root << build_element('WLDPH2', data[:wldph2], data[:wldph2_attributes]) if data.key? :wldph2

        root
      end
    end
  end
end