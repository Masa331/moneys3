require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/doklad'

module MoneyS3
  module Parsers
    class VazbaType
      include BaseParser

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
        hash = HashWithAttributes.new({}, attributes)

        hash[:typ] = typ if has? 'Typ'
        hash[:pod_typ] = pod_typ if has? 'PodTyp'
        hash[:doklad] = doklad.to_h_with_attrs if has? 'Doklad'

        hash
      end
    end
  end
end