module MoneyS3
  module Builders
    class KomponentaKusovnikType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        if data.key? :child
          root << ChildKusovnikType.new('Child', data[:child]).builder
        end
        if data.key? :reference
          root << Reference.new('Reference', data[:reference]).builder
        end

        root
      end
    end
  end
end