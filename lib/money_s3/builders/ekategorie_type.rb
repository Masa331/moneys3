require 'money_s3/builders/base_builder'
require 'money_s3/builders/e_shop_info'
require 'money_s3/builders/ekategorie_type'

module MoneyS3
  module Builders
    class EkategorieType
      include BaseBuilder

      attr_accessor :id, :name, :descript, :in_changed, :no_public, :e_shop_info, :seznam_podr_kategorii

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('ID') << id) if id
        root << (Ox::Element.new('Name') << name) if name
        root << (Ox::Element.new('Descript') << descript) if descript
        root << (Ox::Element.new('IN_Changed') << in_changed) if in_changed
        root << (Ox::Element.new('NoPublic') << no_public) if no_public
        root << EShopInfo.new(e_shop_info, 'eShopInfo').builder if e_shop_info

        if seznam_podr_kategorii
          element = Ox::Element.new('SeznamPodrKategorii')
          seznam_podr_kategorii.each { |i| element << EkategorieType.new(i, 'eKategorie').builder }
          root << element
        end

        root
      end
    end
  end
end