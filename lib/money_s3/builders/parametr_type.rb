require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class ParametrType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :id
          element = Ox::Element.new('ID')
          element << attributes[:id] if attributes[:id]
          root << element
        end

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :druh
          element = Ox::Element.new('Druh')
          element << attributes[:druh] if attributes[:druh]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :mj
          element = Ox::Element.new('MJ')
          element << attributes[:mj] if attributes[:mj]
          root << element
        end

        if attributes.key? :uziv_code
          element = Ox::Element.new('UzivCode')
          element << attributes[:uziv_code] if attributes[:uziv_code]
          root << element
        end

        if attributes.key? :hodnoty
          element = Ox::Element.new('Hodnoty')
          element << attributes[:hodnoty] if attributes[:hodnoty]
          root << element
        end

        root
      end
    end
  end
end