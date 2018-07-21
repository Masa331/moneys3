module MoneyS3
  module Builders
    class KurzListekType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Banka', data[:banka], data[:banka_attributes]) if data.key? :banka
        root << build_element('PorCislo', data[:por_cislo], data[:por_cislo_attributes]) if data.key? :por_cislo
        root << build_element('Datum', data[:datum], data[:datum_attributes]) if data.key? :datum
        if data.key? :seznam_kurzu
          element = Ox::Element.new('SeznamKurzu')
          data[:seznam_kurzu].each { |i| element << KurzType.new('Kurz', i).builder }
          root << element
        end

        root
      end
    end
  end
end