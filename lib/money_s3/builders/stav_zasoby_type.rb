require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class StavZasobyType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zasoba
          element = Ox::Element.new('Zasoba')
          element << attributes[:zasoba] if attributes[:zasoba]
          root << element
        end

        if attributes.key? :rezervace
          element = Ox::Element.new('Rezervace')
          element << attributes[:rezervace] if attributes[:rezervace]
          root << element
        end

        if attributes.key? :objednano
          element = Ox::Element.new('Objednano')
          element << attributes[:objednano] if attributes[:objednano]
          root << element
        end

        root
      end
    end
  end
end