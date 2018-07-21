module MoneyS3
  module Parsers
    class InvDoklType
      include ParserCore::BaseParser

      def cislo_d
        at 'CisloD'
      end

      def cislo_d_attributes
        attributes_at 'CisloD'
      end

      def inv_id
        at 'InvID'
      end

      def inv_id_attributes
        attributes_at 'InvID'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def prac
        at 'Prac'
      end

      def prac_attributes
        attributes_at 'Prac'
      end

      def kontr
        at 'Kontr'
      end

      def kontr_attributes
        attributes_at 'Kontr'
      end

      def poznamka
        at 'Poznamka'
      end

      def poznamka_attributes
        attributes_at 'Poznamka'
      end

      def polozka
        array_of_at(PolInvDoklType, ['Polozka'])
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:cislo_d] = cislo_d if has? 'CisloD'
        hash[:cislo_d_attributes] = cislo_d_attributes if has? 'CisloD'
        hash[:inv_id] = inv_id if has? 'InvID'
        hash[:inv_id_attributes] = inv_id_attributes if has? 'InvID'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:prac] = prac if has? 'Prac'
        hash[:prac_attributes] = prac_attributes if has? 'Prac'
        hash[:kontr] = kontr if has? 'Kontr'
        hash[:kontr_attributes] = kontr_attributes if has? 'Kontr'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:poznamka_attributes] = poznamka_attributes if has? 'Poznamka'
        hash[:polozka] = polozka.map(&:to_h) if has? 'Polozka'

        hash
      end
    end
  end
end