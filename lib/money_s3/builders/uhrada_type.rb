module MoneyS3
  module Builders
    class UhradaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :doklad_uhr
          root << DoklRefType.new('DokladUhr', data[:doklad_uhr]).builder
        end
        if data.key? :doklad_hraz
          root << DokladHraz.new('DokladHraz', data[:doklad_hraz]).builder
        end
        root << build_element('Prijem', data[:prijem]) if data.key? :prijem
        root << build_element('Poradi', data[:poradi]) if data.key? :poradi
        root << build_element('RokPoradi', data[:rok_poradi]) if data.key? :rok_poradi
        root << build_element('Datum', data[:datum]) if data.key? :datum
        root << build_element('DatUplDPH', data[:dat_upl_dph]) if data.key? :dat_upl_dph
        root << build_element('Castka', data[:castka]) if data.key? :castka
        if data.key? :valuty_hraz
          root << ValutyHraz.new('ValutyHraz', data[:valuty_hraz]).builder
        end
        if data.key? :valuty_uhr
          root << ValutyUhr.new('ValutyUhr', data[:valuty_uhr]).builder
        end
        if data.key? :kurz_rozd
          root << KurzRozd.new('KurzRozd', data[:kurz_rozd]).builder
        end
        root << build_element('ZpusobUhr', data[:zpusob_uhr]) if data.key? :zpusob_uhr
        root << build_element('Platidlo', data[:platidlo]) if data.key? :platidlo
        if data.key? :seznam_pd_uhrad
          element = Ox::Element.new('SeznamPDUhrad')
          data[:seznam_pd_uhrad].each { |i| element << UhradaPduhrada.new('Uhrada_PDUhrada', i).builder }
          root << element
        end

        root
      end
    end
  end
end