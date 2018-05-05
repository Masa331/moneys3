module MoneyS3
  module Parsers
    class KurzRozd
      include ParserCore::BaseParser

      def typ
        at 'Typ'
      end

      def preceneni
        at 'Preceneni'
      end

      def castka
        at 'Castka'
      end

      def kr_poradi
        at 'KRPoradi'
      end

      def doklad
        submodel_at(DoklRefType, 'Doklad')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:typ] = typ if has? 'Typ'
        hash[:preceneni] = preceneni if has? 'Preceneni'
        hash[:castka] = castka if has? 'Castka'
        hash[:kr_poradi] = kr_poradi if has? 'KRPoradi'
        hash[:doklad] = doklad.to_h_with_attrs if has? 'Doklad'

        hash
      end
    end
  end
end