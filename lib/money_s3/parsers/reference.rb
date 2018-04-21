module MoneyS3
  module Parsers
    class Reference
      include BaseParser

      def typ_kusovnik
        submodel_at(KusovnikType, 'TypKusovnik')
      end

      def vzor
        submodel_at(VzorKomponentaType, 'Vzor')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:typ_kusovnik] = typ_kusovnik.to_h_with_attrs if has? 'TypKusovnik'
        hash[:vzor] = vzor.to_h_with_attrs if has? 'Vzor'

        hash
      end
    end
  end
end