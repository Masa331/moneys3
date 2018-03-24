require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/e_shop_info'
require 'money_s3/parsers/ekategorie_type'

module MoneyS3
  module Parsers
    class EkategorieType
      include BaseParser

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

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:id] = id if has? 'ID'
        hash[:name] = name if has? 'Name'
        hash[:descript] = descript if has? 'Descript'
        hash[:in_changed] = in_changed if has? 'IN_Changed'
        hash[:no_public] = no_public if has? 'NoPublic'
        hash[:e_shop_info] = e_shop_info.to_h if has? 'eShopInfo'
        hash[:seznam_podr_kategorii] = seznam_podr_kategorii.map(&:to_h) if has? 'SeznamPodrKategorii'

        hash
      end
    end
  end
end