module MoneyS3
  module Parsers
    class UcPohybType
      include BaseParser

      def zkrat
        at 'Zkrat'
      end

      def popis
        at 'Popis'
      end

      def typ
        at 'Typ'
      end

      def sloupec
        at 'Sloupec'
      end

      def pozn
        at 'Pozn'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:popis] = popis if has? 'Popis'
        hash[:typ] = typ if has? 'Typ'
        hash[:sloupec] = sloupec if has? 'Sloupec'
        hash[:pozn] = pozn if has? 'Pozn'

        hash
      end
    end
  end
end