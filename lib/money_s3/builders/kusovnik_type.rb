module MoneyS3
  module Builders
    class KusovnikType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :header
          root << HeaderKusovnikType.new('Header', data[:header]).builder
        end
        if data.key? :child
          root << ChildKusovnikType.new('Child', data[:child]).builder
        end
        if data.key? :seznam_komponent
          element = Ox::Element.new('SeznamKomponent')
          data[:seznam_komponent].each { |i| element << KomponentaKusovnikType.new('Komponenta', i).builder }
          root << element
        end

        root
      end
    end
  end
end