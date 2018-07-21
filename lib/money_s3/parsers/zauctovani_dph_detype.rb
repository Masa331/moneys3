module MoneyS3
  module Parsers
    class ZauctovaniDPHDetype
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

      def poh_dss
        at 'PohDSS'
      end

      def poh_dss_attributes
        attributes_at 'PohDSS'
      end

      def poh_dzs
        at 'PohDZS'
      end

      def poh_dzs_attributes
        attributes_at 'PohDZS'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def seznam_obdobi_dph
        array_of_at(ObdobiDPH2, ['SeznamObdobiDPH', 'ObdobiDPH'])
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
        hash[:poh_dss] = poh_dss if has? 'PohDSS'
        hash[:poh_dss_attributes] = poh_dss_attributes if has? 'PohDSS'
        hash[:poh_dzs] = poh_dzs if has? 'PohDZS'
        hash[:poh_dzs_attributes] = poh_dzs_attributes if has? 'PohDZS'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'
        hash[:seznam_obdobi_dph] = seznam_obdobi_dph.map(&:to_h) if has? 'SeznamObdobiDPH'

        hash
      end
    end
  end
end