module MoneyS3
  module Parsers
    class VazbaType
      include ParserCore::BaseParser

      def typ
        at 'Typ'
      end

      def pod_typ
        at 'PodTyp'
      end

      def doklad
        submodel_at(Doklad, 'Doklad')
      end

      def to_h_with_attrs
        hash = ParserCore::HashWithAttributes.new({}, attributes)

        hash[:typ] = typ if has? 'Typ'
        hash[:pod_typ] = pod_typ if has? 'PodTyp'
        hash[:doklad] = doklad.to_h_with_attrs if has? 'Doklad'

        hash
      end
    end
  end
end