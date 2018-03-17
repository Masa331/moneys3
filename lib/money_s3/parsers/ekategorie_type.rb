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
        { id: id,
          name: name,
          descript: descript,
          in_changed: in_changed,
          no_public: no_public,
          e_shop_info: e_shop_info.to_h,
          seznam_podr_kategorii: seznam_podr_kategorii.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end