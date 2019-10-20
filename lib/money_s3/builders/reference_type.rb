module MoneyS3
  module Builders
    class ReferenceType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        if data.key? :id
          data[:id].map { |i| Ox::Element.new('ID') << i }.each { |i| root << i }
        end

        root
      end
    end
  end
end