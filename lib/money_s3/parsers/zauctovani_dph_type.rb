module MoneyS3
  module Parsers
    class ZauctovaniDPHType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def sd_uc_md
        at 'SDUcMD'
      end

      def sd_uc_md_attributes
        attributes_at 'SDUcMD'
      end

      def sd_uc_d
        at 'SDUcD'
      end

      def sd_uc_d_attributes
        attributes_at 'SDUcD'
      end

      def zd_uc_md
        at 'ZDUcMD'
      end

      def zd_uc_md_attributes
        attributes_at 'ZDUcMD'
      end

      def zd_uc_d
        at 'ZDUcD'
      end

      def zd_uc_d_attributes
        attributes_at 'ZDUcD'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def seznam_obdobi_dph
        array_of_at(ObdobiDPH, ['SeznamObdobiDPH', 'ObdobiDPH'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:sd_uc_md] = sd_uc_md if has? 'SDUcMD'
        hash[:sd_uc_md_attributes] = sd_uc_md_attributes if has? 'SDUcMD'
        hash[:sd_uc_d] = sd_uc_d if has? 'SDUcD'
        hash[:sd_uc_d_attributes] = sd_uc_d_attributes if has? 'SDUcD'
        hash[:zd_uc_md] = zd_uc_md if has? 'ZDUcMD'
        hash[:zd_uc_md_attributes] = zd_uc_md_attributes if has? 'ZDUcMD'
        hash[:zd_uc_d] = zd_uc_d if has? 'ZDUcD'
        hash[:zd_uc_d_attributes] = zd_uc_d_attributes if has? 'ZDUcD'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:seznam_obdobi_dph] = seznam_obdobi_dph.map(&:to_h) if has? 'SeznamObdobiDPH'

        hash
      end
    end
  end
end