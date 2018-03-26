require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/ekategorie_zasoba_type'

module MoneyS3
  module Parsers
    class EshopZasobaType
      include BaseParser

      def in_export
        at 'IN_Export'
      end

      def in_changed
        at 'IN_Changed'
      end

      def in_deleted
        at 'IN_Deleted'
      end

      def cis_karty
        at 'CisKarty'
      end

      def cis_skladu
        at 'CisSkladu'
      end

      def e_skup
        array_of_at(EkategorieZasobaType, ['eSkup'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:in_export] = in_export if has? 'IN_Export'
        hash[:in_changed] = in_changed if has? 'IN_Changed'
        hash[:in_deleted] = in_deleted if has? 'IN_Deleted'
        hash[:cis_karty] = cis_karty if has? 'CisKarty'
        hash[:cis_skladu] = cis_skladu if has? 'CisSkladu'
        hash[:e_skup] = e_skup.map(&:to_h_with_attrs) if has? 'eSkup'

        hash
      end
    end
  end
end