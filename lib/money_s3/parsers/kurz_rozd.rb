module MoneyS3
  module Parsers
    class KurzRozd
      include ParserCore::BaseParser

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def preceneni
        at 'Preceneni'
      end

      def preceneni_attributes
        attributes_at 'Preceneni'
      end

      def castka
        at 'Castka'
      end

      def castka_attributes
        attributes_at 'Castka'
      end

      def kr_poradi
        at 'KRPoradi'
      end

      def kr_poradi_attributes
        attributes_at 'KRPoradi'
      end

      def doklad
        submodel_at(DoklRefType, 'Doklad')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:preceneni] = preceneni if has? 'Preceneni'
        hash[:preceneni_attributes] = preceneni_attributes if has? 'Preceneni'
        hash[:castka] = castka if has? 'Castka'
        hash[:castka_attributes] = castka_attributes if has? 'Castka'
        hash[:kr_poradi] = kr_poradi if has? 'KRPoradi'
        hash[:kr_poradi_attributes] = kr_poradi_attributes if has? 'KRPoradi'
        hash[:doklad] = doklad.to_h if has? 'Doklad'

        hash
      end
    end
  end
end