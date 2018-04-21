module MoneyS3
  module Builders
    class UhradaPduhrada
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Poradi', data[:poradi]) if data.key? :poradi
        root << build_element('Kontace', data[:kontace]) if data.key? :kontace
        root << build_element('Stredisko', data[:stredisko]) if data.key? :stredisko
        root << build_element('Zakazka', data[:zakazka]) if data.key? :zakazka
        root << build_element('Cinnost', data[:cinnost]) if data.key? :cinnost
        root << build_element('Zaklad', data[:zaklad]) if data.key? :zaklad
        root << build_element('DPHZS', data[:dphzs]) if data.key? :dphzs
        root << build_element('DPHSS', data[:dphss]) if data.key? :dphss
        root << build_element('WLZaklady', data[:wl_zaklady]) if data.key? :wl_zaklady
        root << build_element('WLDPH1', data[:wldph1]) if data.key? :wldph1
        root << build_element('WLDPH2', data[:wldph2]) if data.key? :wldph2

        root
      end
    end
  end
end