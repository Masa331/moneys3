require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Eshop
      include BaseParser

      def in_export
        at :IN_Export
      end

      def in_changed
        at :IN_Changed
      end

      def in_id
        at :IN_Id
      end

      def in_jmeno
        at :IN_Jmeno
      end

      def in_heslo
        at :IN_Heslo
      end

      def in_dealer
        at :IN_Dealer
      end

      def in_d_skup
        at :IN_DSkup
      end

      def in_ind_slev
        at :IN_IndSlev
      end

      def in_soukrom
        at :IN_Soukrom
      end

      def in_d_skup_zkratka
        at :IN_DSkupZkratka
      end

      def to_h
        { in_export: in_export,
          in_changed: in_changed,
          in_id: in_id,
          in_jmeno: in_jmeno,
          in_heslo: in_heslo,
          in_dealer: in_dealer,
          in_d_skup: in_d_skup,
          in_ind_slev: in_ind_slev,
          in_soukrom: in_soukrom,
          in_d_skup_zkratka: in_d_skup_zkratka
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end