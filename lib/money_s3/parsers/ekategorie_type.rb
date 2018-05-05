module MoneyS3
  module Parsers
    class EkategorieType
      include ParserCore::BaseParser

      def id
        at 'ID'
      end

      def name
        at 'Name'
      end

      def descript
        at 'Descript'
      end

      def in_changed
        at 'IN_Changed'
      end

      def no_public
        at 'NoPublic'
      end

      def e_shop_info
        submodel_at(EShopInfo, 'eShopInfo')
      end

      def seznam_podr_kategorii
        array_of_at(EkategorieType, ['SeznamPodrKategorii', 'eKategorie'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:id] = id if has? 'ID'
        hash[:name] = name if has? 'Name'
        hash[:descript] = descript if has? 'Descript'
        hash[:in_changed] = in_changed if has? 'IN_Changed'
        hash[:no_public] = no_public if has? 'NoPublic'
        hash[:e_shop_info] = e_shop_info.to_h_with_attrs if has? 'eShopInfo'
        hash[:seznam_podr_kategorii] = seznam_podr_kategorii.map(&:to_h_with_attrs) if has? 'SeznamPodrKategorii'

        hash
      end
    end
  end
end