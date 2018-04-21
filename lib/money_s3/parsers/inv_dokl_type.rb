module MoneyS3
  module Parsers
    class InvDoklType
      include BaseParser

      def cislo_d
        at 'CisloD'
      end

      def inv_id
        at 'InvID'
      end

      def popis
        at 'Popis'
      end

      def prac
        at 'Prac'
      end

      def kontr
        at 'Kontr'
      end

      def poznamka
        at 'Poznamka'
      end

      def polozka
        array_of_at(PolInvDoklType, ['Polozka'])
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:cislo_d] = cislo_d if has? 'CisloD'
        hash[:inv_id] = inv_id if has? 'InvID'
        hash[:popis] = popis if has? 'Popis'
        hash[:prac] = prac if has? 'Prac'
        hash[:kontr] = kontr if has? 'Kontr'
        hash[:poznamka] = poznamka if has? 'Poznamka'
        hash[:polozka] = polozka.map(&:to_h_with_attrs) if has? 'Polozka'

        hash
      end
    end
  end
end