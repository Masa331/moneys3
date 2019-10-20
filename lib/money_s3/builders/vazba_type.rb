module MoneyS3
  module Builders
    class VazbaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('PodTyp', data[:pod_typ], data[:pod_typ_attributes]) if data.key? :pod_typ
        if data.key? :doklad
          root << Doklad.new('Doklad', data[:doklad]).builder
        end

        root
      end
    end
  end
end