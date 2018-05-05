module MoneyS3
  module Parsers
    class KusovnikType
      include ParserCore::BaseParser

      def header
        submodel_at(HeaderKusovnikType, 'Header')
      end

      def child
        submodel_at(ChildKusovnikType, 'Child')
      end

      def seznam_komponent
        array_of_at(KomponentaKusovnikType, ['SeznamKomponent', 'Komponenta'])
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:header] = header.to_h_with_attrs if has? 'Header'
        hash[:child] = child.to_h_with_attrs if has? 'Child'
        hash[:seznam_komponent] = seznam_komponent.map(&:to_h_with_attrs) if has? 'SeznamKomponent'

        hash
      end
    end
  end
end