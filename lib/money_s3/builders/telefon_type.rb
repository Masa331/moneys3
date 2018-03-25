require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class TelefonType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)
        if attributes.respond_to? :attributes
          attributes.attributes.each { |k, v| root[k] = v }
        end

        if attributes.key? :pred
          element = Ox::Element.new('Pred')
          element << attributes[:pred] if attributes[:pred]
          root << element
        end

        if attributes.key? :cislo
          element = Ox::Element.new('Cislo')
          if attributes[:cislo].respond_to? :attributes
            attributes[:cislo].attributes.each { |k, v| element[k] = v }
          end
          element << attributes[:cislo].to_s if attributes[:cislo]
          root << element
        end

        if attributes.key? :klap
          element = Ox::Element.new('Klap')
          element << attributes[:klap] if attributes[:klap]
          root << element
        end

        root
      end
    end
  end
end
