require 'money_s3/builders/base_builder'
require 'money_s3/builders/parametr_type'

module MoneyS3
  module Builders
    class ParametrKartaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :poradi
          element = Ox::Element.new('Poradi')
          element << attributes[:poradi] if attributes[:poradi]
          root << element
        end

        if attributes.key? :value
          element = Ox::Element.new('Value')
          element << attributes[:value] if attributes[:value]
          root << element
        end

        if attributes.key? :parametr
          root << ParametrType.new(attributes[:parametr], 'Parametr').builder
        end

        root
      end
    end
  end
end