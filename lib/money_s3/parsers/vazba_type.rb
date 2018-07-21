module MoneyS3
  module Parsers
    class VazbaType
      include ParserCore::BaseParser

      def typ
        at 'Typ'
      end

      def typ_attributes
        attributes_at 'Typ'
      end

      def pod_typ
        at 'PodTyp'
      end

      def pod_typ_attributes
        attributes_at 'PodTyp'
      end

      def doklad
        submodel_at(Doklad, 'Doklad')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:typ] = typ if has? 'Typ'
        hash[:typ_attributes] = typ_attributes if has? 'Typ'
        hash[:pod_typ] = pod_typ if has? 'PodTyp'
        hash[:pod_typ_attributes] = pod_typ_attributes if has? 'PodTyp'
        hash[:doklad] = doklad.to_h if has? 'Doklad'

        hash
      end
    end
  end
end