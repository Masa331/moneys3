module MoneyS3
  module Parsers
    class Reference
      include ParserCore::BaseParser

      def typ_kusovnik
        submodel_at(KusovnikType, 'TypKusovnik')
      end

      def vzor
        submodel_at(VzorKomponentaType, 'Vzor')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:typ_kusovnik] = typ_kusovnik.to_h if has? 'TypKusovnik'
        hash[:vzor] = vzor.to_h if has? 'Vzor'

        hash
      end
    end
  end
end