module MoneyS3
  module Parsers
    class EshopZasobaType
      include ParserCore::BaseParser

      def in_export
        at 'IN_Export'
      end

      def in_export_attributes
        attributes_at 'IN_Export'
      end

      def in_changed
        at 'IN_Changed'
      end

      def in_changed_attributes
        attributes_at 'IN_Changed'
      end

      def in_deleted
        at 'IN_Deleted'
      end

      def in_deleted_attributes
        attributes_at 'IN_Deleted'
      end

      def cis_karty
        at 'CisKarty'
      end

      def cis_karty_attributes
        attributes_at 'CisKarty'
      end

      def cis_skladu
        at 'CisSkladu'
      end

      def cis_skladu_attributes
        attributes_at 'CisSkladu'
      end

      def e_skup
        array_of_at(EkategorieZasobaType, ['eSkup'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:in_export] = in_export if has? 'IN_Export'
        hash[:in_export_attributes] = in_export_attributes if has? 'IN_Export'
        hash[:in_changed] = in_changed if has? 'IN_Changed'
        hash[:in_changed_attributes] = in_changed_attributes if has? 'IN_Changed'
        hash[:in_deleted] = in_deleted if has? 'IN_Deleted'
        hash[:in_deleted_attributes] = in_deleted_attributes if has? 'IN_Deleted'
        hash[:cis_karty] = cis_karty if has? 'CisKarty'
        hash[:cis_karty_attributes] = cis_karty_attributes if has? 'CisKarty'
        hash[:cis_skladu] = cis_skladu if has? 'CisSkladu'
        hash[:cis_skladu_attributes] = cis_skladu_attributes if has? 'CisSkladu'
        hash[:e_skup] = e_skup.map(&:to_h) if has? 'eSkup'

        hash
      end
    end
  end
end