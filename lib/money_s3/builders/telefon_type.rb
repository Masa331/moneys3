require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class TelefonType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :pred
          element = Ox::Element.new('Pred')
          element << attributes[:pred] if attributes[:pred]
          root << element
        end

        if attributes.key? :cislo
          element = Ox::Element.new('Cislo')
          element << attributes[:cislo] if attributes[:cislo]
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
