require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class CenaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :limit
          element = Ox::Element.new('Limit')
          element << attributes[:limit] if attributes[:limit]
          root << element
        end

        if attributes.key? :cena
          element = Ox::Element.new('Cena')
          element << attributes[:cena] if attributes[:cena]
          root << element
        end

        if attributes.key? :sleva
          element = Ox::Element.new('Sleva')
          element << attributes[:sleva] if attributes[:sleva]
          root << element
        end

        root
      end
    end
  end
end