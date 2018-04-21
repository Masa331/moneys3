module MoneyS3
  module Builders
    class EkategorieType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('ID', data[:id]) if data.key? :id
        root << build_element('Name', data[:name]) if data.key? :name
        root << build_element('Descript', data[:descript]) if data.key? :descript
        root << build_element('IN_Changed', data[:in_changed]) if data.key? :in_changed
        root << build_element('NoPublic', data[:no_public]) if data.key? :no_public
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