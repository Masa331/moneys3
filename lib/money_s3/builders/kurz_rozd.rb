require 'money_s3/builders/base_builder'
require 'money_s3/builders/dokl_ref_type'

module MoneyS3
  module Builders
    class KurzRozd
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :preceneni
          element = Ox::Element.new('Preceneni')
          element << attributes[:preceneni] if attributes[:preceneni]
          root << element
        end

        if attributes.key? :castka
          element = Ox::Element.new('Castka')
          element << attributes[:castka] if attributes[:castka]
          root << element
        end

        if attributes.key? :kr_poradi
          element = Ox::Element.new('KRPoradi')
          element << attributes[:kr_poradi] if attributes[:kr_poradi]
          root << element
        end

        if attributes.key? :doklad
          root << DoklRefType.new(attributes[:doklad], 'Doklad').builder
        end

        root
      end
    end
  end
end