require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/pol_inv_dokl_type'

module MoneyS3
  module Parsers
    class InvDoklType
      include BaseParser

      def cislo_d
        at :CisloD
      end

      def inv_id
        at :InvID
      end

      def popis
        at :Popis
      end

      def prac
        at :Prac
      end

      def kontr
        at :Kontr
      end

      def poznamka
        at :Poznamka
      end

      def polozka
        array_of_at(PolInvDoklType, [:Polozka])
      end

      def to_h
        { cislo_d: cislo_d,
          inv_id: inv_id,
          popis: popis,
          prac: prac,
          kontr: kontr,
          poznamka: poznamka,
          polozka: polozka.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end