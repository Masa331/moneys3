module MoneyS3
  module Builders
    class VzorKomponentaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :header
          root << HeaderKusovnikType.new('Header', data[:header]).builder
        end
        if data.key? :child
          root << ChildKusovnikType.new('Child', data[:child]).builder
        end
        if data.key? :km_karta
          root << KmKartaType.new('KmKarta', data[:km_karta]).builder
        end

        root
      end
    end
  end
end