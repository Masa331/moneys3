module MoneyS3
  module Parsers
    class PredkontaceDEType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def popis
        at 'Popis'
      end

      def typ
        at 'Typ'
      end

      def poh_zak
        at 'PohZak'
      end

      def zauct_dph
        at 'ZauctDPH'
      end

      def cleneni
        at 'Cleneni'
      end

      def pozn
        at 'Pozn'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:popis] = popis if has? 'Popis'
        hash[:typ] = typ if has? 'Typ'
        hash[:poh_zak] = poh_zak if has? 'PohZak'
        hash[:zauct_dph] = zauct_dph if has? 'ZauctDPH'
        hash[:cleneni] = cleneni if has? 'Cleneni'
        hash[:pozn] = pozn if has? 'Pozn'

        hash
      end
    end
  end
end