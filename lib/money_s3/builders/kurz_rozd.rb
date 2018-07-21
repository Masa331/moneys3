module MoneyS3
  module Builders
    class KurzRozd
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Preceneni', data[:preceneni], data[:preceneni_attributes]) if data.key? :preceneni
        root << build_element('Castka', data[:castka], data[:castka_attributes]) if data.key? :castka
        root << build_element('KRPoradi', data[:kr_poradi], data[:kr_poradi_attributes]) if data.key? :kr_poradi
        if data.key? :doklad
          root << DoklRefType.new('Doklad', data[:doklad]).builder
        end

        root
      end
    end
  end
end