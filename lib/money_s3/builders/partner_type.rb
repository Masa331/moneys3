module MoneyS3
  module Builders
    class PartnerType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :partner
          root << FirmaType.new('Partner', data[:partner]).builder
        end

        root
      end
    end
  end
end