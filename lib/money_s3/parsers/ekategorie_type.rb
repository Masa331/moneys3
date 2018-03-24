require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/e_shop_info'
require 'money_s3/parsers/ekategorie_type'

module MoneyS3
  module Parsers
    class EkategorieType
      include BaseParser

      def id
        at :ID
      end

      def name
        at :Name
      end

      def descript
        at :Descript
      end

      def in_changed
        at :IN_Changed
      end

      def no_public
        at :NoPublic
      end

      def e_shop_info
        submodel_at(EShopInfo, :eShopInfo)
      end

      def seznam_podr_kategorii
        array_of_at(EkategorieType, [:SeznamPodrKategorii, :eKategorie])
      end

      def to_h
        hash = {}

        hash[:id] = id if raw.key? :ID
        hash[:name] = name if raw.key? :Name
        hash[:descript] = descript if raw.key? :Descript
        hash[:in_changed] = in_changed if raw.key? :IN_Changed
        hash[:no_public] = no_public if raw.key? :NoPublic
        hash[:e_shop_info] = e_shop_info.to_h if raw.key? :eShopInfo
        hash[:seznam_podr_kategorii] = seznam_podr_kategorii.map(&:to_h) if raw.key? :SeznamPodrKategorii

        hash
      end
    end
  end
end