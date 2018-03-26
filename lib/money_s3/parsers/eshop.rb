require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class Eshop
      include BaseParser

      def in_export
        at 'IN_Export'
      end

      def in_changed
        at 'IN_Changed'
      end

      def in_id
        at 'IN_Id'
      end

      def in_jmeno
        at 'IN_Jmeno'
      end

      def in_heslo
        at 'IN_Heslo'
      end

      def in_dealer
        at 'IN_Dealer'
      end

      def in_d_skup
        at 'IN_DSkup'
      end

      def in_ind_slev
        at 'IN_IndSlev'
      end

      def in_soukrom
        at 'IN_Soukrom'
      end

      def in_d_skup_zkratka
        at 'IN_DSkupZkratka'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:in_export] = in_export if has? 'IN_Export'
        hash[:in_changed] = in_changed if has? 'IN_Changed'
        hash[:in_id] = in_id if has? 'IN_Id'
        hash[:in_jmeno] = in_jmeno if has? 'IN_Jmeno'
        hash[:in_heslo] = in_heslo if has? 'IN_Heslo'
        hash[:in_dealer] = in_dealer if has? 'IN_Dealer'
        hash[:in_d_skup] = in_d_skup if has? 'IN_DSkup'
        hash[:in_ind_slev] = in_ind_slev if has? 'IN_IndSlev'
        hash[:in_soukrom] = in_soukrom if has? 'IN_Soukrom'
        hash[:in_d_skup_zkratka] = in_d_skup_zkratka if has? 'IN_DSkupZkratka'

        hash
      end
    end
  end
end