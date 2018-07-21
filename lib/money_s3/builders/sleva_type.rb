module MoneyS3
  module Builders
    class SlevaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Limit', data[:limit], data[:limit_attributes]) if data.key? :limit
        root << build_element('Sleva', data[:sleva], data[:sleva_attributes]) if data.key? :sleva

        root
      end
    end
  end
end