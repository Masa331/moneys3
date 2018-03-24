require 'money_s3/builders/base_builder'
require 'money_s3/builders/ekategorie_zasoba_type'

module MoneyS3
  module Builders
    class EkategorieZasobaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :id
          element = Ox::Element.new('ID')
          element << attributes[:id] if attributes[:id]
          root << element
        end

        if attributes.key? :name
          element = Ox::Element.new('Name')
          element << attributes[:name] if attributes[:name]
          root << element
        end

        if attributes.key? :descript
          element = Ox::Element.new('Descript')
          element << attributes[:descript] if attributes[:descript]
          root << element
        end

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :changed
          element = Ox::Element.new('Changed')
          element << attributes[:changed] if attributes[:changed]
          root << element
        end

        if attributes.key? :public
          element = Ox::Element.new('Public')
          element << attributes[:public] if attributes[:public]
          root << element
        end

        if attributes.key? :parent
          root << EkategorieZasobaType.new(attributes[:parent], 'Parent').builder
        end

        root
      end
    end
  end
end