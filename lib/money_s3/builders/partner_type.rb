module MoneyS3
  module Builders
    class PartnerType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :partner
          root << FirmaType.new('Partner', data[:partner]).builder
        end

        root
      end
    end
  end
end