module MoneyS3
  module Builders
    class NepPlatbaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :platidlo
          root << NepPlatidloType.new('Platidlo', data[:platidlo]).builder
        end
        root << build_element('MnozstviMJ', data[:mnozstvi_mj], data[:mnozstvi_mj_attributes]) if data.key? :mnozstvi_mj
        root << build_element('Castka', data[:castka], data[:castka_attributes]) if data.key? :castka

        root
      end
    end
  end
end