module MoneyS3
  module Parsers
    class KurzListekType
      include ParserCore::BaseParser

      def banka
        at 'Banka'
      end

      def banka_attributes
        attributes_at 'Banka'
      end

      def por_cislo
        at 'PorCislo'
      end

      def por_cislo_attributes
        attributes_at 'PorCislo'
      end

      def datum
        at 'Datum'
      end

      def datum_attributes
        attributes_at 'Datum'
      end

      def seznam_kurzu
        array_of_at(KurzType, ['SeznamKurzu', 'Kurz'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:banka] = banka if has? 'Banka'
        hash[:banka_attributes] = banka_attributes if has? 'Banka'
        hash[:por_cislo] = por_cislo if has? 'PorCislo'
        hash[:por_cislo_attributes] = por_cislo_attributes if has? 'PorCislo'
        hash[:datum] = datum if has? 'Datum'
        hash[:datum_attributes] = datum_attributes if has? 'Datum'
        hash[:seznam_kurzu] = seznam_kurzu.map(&:to_h) if has? 'SeznamKurzu'

        hash
      end
    end
  end
end