module MoneyS3
  module Builders
    class ReferenceType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :id
          data[:id].map { |i| Ox::Element.new('ID') << i }.each { |i| root << i }
        end

        root
      end
    end
  end
end