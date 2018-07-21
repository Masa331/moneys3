module MoneyS3
  module Parsers
    class UctyPohybuType
      include ParserCore::BaseParser

      def uc_prodejk
        at 'UcProdejk'
      end

      def uc_prodejk_attributes
        attributes_at 'UcProdejk'
      end

      def uc_prijemk
        at 'UcPrijemk'
      end

      def uc_prijemk_attributes
        attributes_at 'UcPrijemk'
      end

      def uc_vydejky
        at 'UcVydejky'
      end

      def uc_vydejky_attributes
        attributes_at 'UcVydejky'
      end

      def uc_vyrobky
        at 'UcVyrobky'
      end

      def uc_vyrobky_attributes
        attributes_at 'UcVyrobky'
      end

      def uc_v_dod_lst
        at 'UcVDodLst'
      end

      def uc_v_dod_lst_attributes
        attributes_at 'UcVDodLst'
      end

      def uc_p_dod_lst
        at 'UcPDodLst'
      end

      def uc_p_dod_lst_attributes
        attributes_at 'UcPDodLst'
      end

      def uc_manko
        at 'UcManko'
      end

      def uc_manko_attributes
        attributes_at 'UcManko'
      end

      def uc_preb
        at 'UcPreb'
      end

      def uc_preb_attributes
        attributes_at 'UcPreb'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:uc_prodejk] = uc_prodejk if has? 'UcProdejk'
        hash[:uc_prodejk_attributes] = uc_prodejk_attributes if has? 'UcProdejk'
        hash[:uc_prijemk] = uc_prijemk if has? 'UcPrijemk'
        hash[:uc_prijemk_attributes] = uc_prijemk_attributes if has? 'UcPrijemk'
        hash[:uc_vydejky] = uc_vydejky if has? 'UcVydejky'
        hash[:uc_vydejky_attributes] = uc_vydejky_attributes if has? 'UcVydejky'
        hash[:uc_vyrobky] = uc_vyrobky if has? 'UcVyrobky'
        hash[:uc_vyrobky_attributes] = uc_vyrobky_attributes if has? 'UcVyrobky'
        hash[:uc_v_dod_lst] = uc_v_dod_lst if has? 'UcVDodLst'
        hash[:uc_v_dod_lst_attributes] = uc_v_dod_lst_attributes if has? 'UcVDodLst'
        hash[:uc_p_dod_lst] = uc_p_dod_lst if has? 'UcPDodLst'
        hash[:uc_p_dod_lst_attributes] = uc_p_dod_lst_attributes if has? 'UcPDodLst'
        hash[:uc_manko] = uc_manko if has? 'UcManko'
        hash[:uc_manko_attributes] = uc_manko_attributes if has? 'UcManko'
        hash[:uc_preb] = uc_preb if has? 'UcPreb'
        hash[:uc_preb_attributes] = uc_preb_attributes if has? 'UcPreb'

        hash
      end
    end
  end
end