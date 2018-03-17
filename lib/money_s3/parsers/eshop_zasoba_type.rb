require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/ekategorie_zasoba_type'

module MoneyS3
  module Parsers
    class EshopZasobaType
      include BaseParser

      def in_export
        at :IN_Export
      end

      def in_changed
        at :IN_Changed
      end

      def in_deleted
        at :IN_Deleted
      end

      def cis_karty
        at :CisKarty
      end

      def cis_skladu
        at :CisSkladu
      end

      def e_skup
        array_of_at(EkategorieZasobaType, [:eSkup])
      end

      def to_h
        { in_export: in_export,
          in_changed: in_changed,
          in_deleted: in_deleted,
          cis_karty: cis_karty,
          cis_skladu: cis_skladu,
          e_skup: e_skup.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end