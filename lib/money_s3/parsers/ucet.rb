module MoneyS3
  module Parsers
    class Ucet
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def ucet
        at 'Ucet'
      end

      def ucet_attributes
        attributes_at 'Ucet'
      end

      def b_kod
        at 'BKod'
      end

      def b_kod_attributes
        attributes_at 'BKod'
      end

      def b_nazev
        at 'BNazev'
      end

      def b_nazev_attributes
        attributes_at 'BNazev'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:ucet] = ucet if has? 'Ucet'
        hash[:ucet_attributes] = ucet_attributes if has? 'Ucet'
        hash[:b_kod] = b_kod if has? 'BKod'
        hash[:b_kod_attributes] = b_kod_attributes if has? 'BKod'
        hash[:b_nazev] = b_nazev if has? 'BNazev'
        hash[:b_nazev_attributes] = b_nazev_attributes if has? 'BNazev'

        hash
      end
    end
  end
end