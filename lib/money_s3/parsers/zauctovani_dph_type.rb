module MoneyS3
  module Parsers
    class ZauctovaniDPHType
      include BaseParser

      def zkrat
        at 'Zkrat'
      end

      def typ
        at 'Typ'
      end

      def popis
        at 'Popis'
      end

      def sd_uc_md
        at 'SDUcMD'
      end

      def sd_uc_d
        at 'SDUcD'
      end

      def zd_uc_md
        at 'ZDUcMD'
      end

      def zd_uc_d
        at 'ZDUcD'
      end

      def pozn
        at 'Pozn'
      end

      def seznam_obdobi_dph
        array_of_at(ObdobiDPH, ['SeznamObdobiDPH', 'ObdobiDPH'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:typ] = typ if has? 'Typ'
        hash[:popis] = popis if has? 'Popis'
        hash[:sd_uc_md] = sd_uc_md if has? 'SDUcMD'
        hash[:sd_uc_d] = sd_uc_d if has? 'SDUcD'
        hash[:zd_uc_md] = zd_uc_md if has? 'ZDUcMD'
        hash[:zd_uc_d] = zd_uc_d if has? 'ZDUcD'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:seznam_obdobi_dph] = seznam_obdobi_dph.map(&:to_h_with_attrs) if has? 'SeznamObdobiDPH'

        hash
      end
    end
  end
end