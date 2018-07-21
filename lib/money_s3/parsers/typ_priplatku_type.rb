module MoneyS3
  module Parsers
    class TypPriplatkuType
      include ParserCore::BaseParser

      def zkratka
        at 'Zkratka'
      end

      def zkratka_attributes
        attributes_at 'Zkratka'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def druh
        at 'Druh'
      end

      def druh_attributes
        attributes_at 'Druh'
      end

      def sazba
        at 'Sazba'
      end

      def sazba_attributes
        attributes_at 'Sazba'
      end

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def auto_load
        at 'AutoLoad'
      end

      def auto_load_attributes
        attributes_at 'AutoLoad'
      end

      def pr_nah_off
        at 'PrNahOff'
      end

      def pr_nah_off_attributes
        attributes_at 'PrNahOff'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkratka] = zkratka if has? 'Zkratka'
        hash[:zkratka_attributes] = zkratka_attributes if has? 'Zkratka'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:druh] = druh if has? 'Druh'
        hash[:druh_attributes] = druh_attributes if has? 'Druh'
        hash[:sazba] = sazba if has? 'Sazba'
        hash[:sazba_attributes] = sazba_attributes if has? 'Sazba'
        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:auto_load] = auto_load if has? 'AutoLoad'
        hash[:auto_load_attributes] = auto_load_attributes if has? 'AutoLoad'
        hash[:pr_nah_off] = pr_nah_off if has? 'PrNahOff'
        hash[:pr_nah_off_attributes] = pr_nah_off_attributes if has? 'PrNahOff'

        hash
      end
    end
  end
end