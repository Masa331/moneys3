module MoneyS3
  module Parsers
    class VzorKomponentaType
      include ParserCore::BaseParser

      def header
        submodel_at(HeaderKusovnikType, 'Header')
      end

      def child
        submodel_at(ChildKusovnikType, 'Child')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:header] = header.to_h if has? 'Header'
        hash[:child] = child.to_h if has? 'Child'
        hash[:km_karta] = km_karta.to_h if has? 'KmKarta'

        hash
      end
    end
  end
end