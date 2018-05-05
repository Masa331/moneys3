module MoneyS3
  module Parsers
    class TypPriplatkuType
      include ParserCore::BaseParser

      def zkratka
        at 'Zkratka'
      end

      def popis
        at 'Popis'
      end

      def poznamka
        at 'Poznamka'
      end

      def druh
        at 'Druh'
      end

      def sazba
        at 'Sazba'
      end

      def typ
        at 'Typ'
      end

      def auto_load
        at 'AutoLoad'
      end

      def pr_nah_off
        at 'PrNahOff'
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:zkratka] = zkratka if has? 'Zkratka'
        hash[:popis] = popis if has? 'Popis'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:druh] = druh if has? 'Druh'
        hash[:sazba] = sazba if has? 'Sazba'
        hash[:typ] = typ if has? 'Typ'
        hash[:auto_load] = auto_load if has? 'AutoLoad'
        hash[:pr_nah_off] = pr_nah_off if has? 'PrNahOff'

        hash
      end
    end
  end
end