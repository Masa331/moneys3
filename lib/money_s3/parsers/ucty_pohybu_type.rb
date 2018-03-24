require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class UctyPohybuType
      include BaseParser

      def uc_prodejk
        at 'UcProdejk'
      end

      def uc_prijemk
        at 'UcPrijemk'
      end

      def uc_vydejky
        at 'UcVydejky'
      end

      def uc_vyrobky
        at 'UcVyrobky'
      end

      def uc_v_dod_lst
        at 'UcVDodLst'
      end

      def uc_p_dod_lst
        at 'UcPDodLst'
      end

      def uc_manko
        at 'UcManko'
      end

      def uc_preb
        at 'UcPreb'
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:uc_prodejk] = uc_prodejk if has? 'UcProdejk'
        hash[:uc_prijemk] = uc_prijemk if has? 'UcPrijemk'
        hash[:uc_vydejky] = uc_vydejky if has? 'UcVydejky'
        hash[:uc_vyrobky] = uc_vyrobky if has? 'UcVyrobky'
        hash[:uc_v_dod_lst] = uc_v_dod_lst if has? 'UcVDodLst'
        hash[:uc_p_dod_lst] = uc_p_dod_lst if has? 'UcPDodLst'
        hash[:uc_manko] = uc_manko if has? 'UcManko'
        hash[:uc_preb] = uc_preb if has? 'UcPreb'

        hash
      end
    end
  end
end