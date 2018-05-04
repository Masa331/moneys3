module MoneyS3
  module Builders
    class SlevaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Limit', data[:limit]) if data.key? :limit
        root << build_element('Sleva', data[:sleva]) if data.key? :sleva

        root
      end
    end
  end
end