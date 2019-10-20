module MoneyS3
  module Builders
    class Valuty2
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end
        if data.key? :souhrn_dph
          root << SouhrnDPHType.new('SouhrnDPH', data[:souhrn_dph]).builder
        end
        root << build_element('Celkem', data[:celkem], data[:celkem_attributes]) if data.key? :celkem

        root
      end
    end
  end
end