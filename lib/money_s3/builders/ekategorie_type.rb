module MoneyS3
  module Builders
    class EkategorieType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('ID', data[:id], data[:id_attributes]) if data.key? :id
        root << build_element('Name', data[:name], data[:name_attributes]) if data.key? :name
        root << build_element('Descript', data[:descript], data[:descript_attributes]) if data.key? :descript
        root << build_element('IN_Changed', data[:in_changed], data[:in_changed_attributes]) if data.key? :in_changed
        root << build_element('NoPublic', data[:no_public], data[:no_public_attributes]) if data.key? :no_public
        if data.key? :e_shop_info
          root << EShopInfo.new('eShopInfo', data[:e_shop_info]).builder
        end
        if data.key? :seznam_podr_kategorii
          element = Ox::Element.new('SeznamPodrKategorii')
          data[:seznam_podr_kategorii].each { |i| element << EkategorieType.new('eKategorie', i).builder }
          root << element
        end

        root
      end
    end
  end
end