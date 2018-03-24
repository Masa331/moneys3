require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class SkupinaKusovnikType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkratka
          element = Ox::Element.new('Zkratka')
          element << attributes[:zkratka] if attributes[:zkratka]
          root << element
        end

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        root
      end
    end
  end
end