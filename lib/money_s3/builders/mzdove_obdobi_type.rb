require 'money_s3/builders/base_builder'
require 'money_s3/builders/prac_pomer'

module MoneyS3
  module Builders
    class MzdoveObdobiType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :mesic
          element = Ox::Element.new('Mesic')
          element << attributes[:mesic] if attributes[:mesic]
          root << element
        end

        if attributes.key? :rok
          element = Ox::Element.new('Rok')
          element << attributes[:rok] if attributes[:rok]
          root << element
        end

        if attributes.key? :funkce
          element = Ox::Element.new('Funkce')
          element << attributes[:funkce] if attributes[:funkce]
          root << element
        end

        if attributes.key? :prac_pomer
          root << PracPomer.new(attributes[:prac_pomer], 'PracPomer').builder
        end

        root
      end
    end
  end
end