require 'money_s3/builders/base_builder'
require 'money_s3/builders/e_shop_info'
require 'money_s3/builders/ekategorie_type'

module MoneyS3
  module Builders
    class EkategorieType
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

        if attributes.key? :in_changed
          element = Ox::Element.new('IN_Changed')
          element << attributes[:in_changed] if attributes[:in_changed]
          root << element
        end

        if attributes.key? :no_public
          element = Ox::Element.new('NoPublic')
          element << attributes[:no_public] if attributes[:no_public]
          root << element
        end

        if attributes.key? :e_shop_info
          root << EShopInfo.new(attributes[:e_shop_info], 'eShopInfo').builder
        end

        if attributes.key? :seznam_podr_kategorii
          element = Ox::Element.new('SeznamPodrKategorii')
          attributes[:seznam_podr_kategorii].each { |i| element << EkategorieType.new(i, 'eKategorie').builder }
          root << element
        end

        root
      end
    end
  end
end