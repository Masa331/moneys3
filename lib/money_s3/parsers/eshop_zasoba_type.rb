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
        hash = {}

        hash[:in_export] = in_export if raw.key? :IN_Export
        hash[:in_changed] = in_changed if raw.key? :IN_Changed
        hash[:in_deleted] = in_deleted if raw.key? :IN_Deleted
        hash[:cis_karty] = cis_karty if raw.key? :CisKarty
        hash[:cis_skladu] = cis_skladu if raw.key? :CisSkladu
        hash[:e_skup] = e_skup.map(&:to_h) if raw.key? :eSkup

        hash
      end
    end
  end
end