module MoneyS3
  module Parsers
    class PredkontaceDEType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def poh_zak
        at 'PohZak'
      end

      def poh_zak_attributes
        attributes_at 'PohZak'
      end

      def zauct_dph
        at 'ZauctDPH'
      end

      def zauct_dph_attributes
        attributes_at 'ZauctDPH'
      end

      def cleneni
        at 'Cleneni'
      end

      def cleneni_attributes
        attributes_at 'Cleneni'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:poh_zak] = poh_zak if has? 'PohZak'
        hash[:poh_zak_attributes] = poh_zak_attributes if has? 'PohZak'
        hash[:zauct_dph] = zauct_dph if has? 'ZauctDPH'
        hash[:zauct_dph_attributes] = zauct_dph_attributes if has? 'ZauctDPH'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:cleneni_attributes] = cleneni_attributes if has? 'Cleneni'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'

        hash
      end
    end
  end
end