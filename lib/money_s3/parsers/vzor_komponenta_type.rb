module MoneyS3
  module Parsers
    class VzorKomponentaType
      include BaseParser

      def header
        submodel_at(HeaderKusovnikType, 'Header')
      end

      def child
        submodel_at(ChildKusovnikType, 'Child')
      end

      def km_karta
        submodel_at(KmKartaType, 'KmKarta')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:header] = header.to_h_with_attrs if has? 'Header'
        hash[:child] = child.to_h_with_attrs if has? 'Child'
        hash[:km_karta] = km_karta.to_h_with_attrs if has? 'KmKarta'

        hash
      end
    end
  end
end