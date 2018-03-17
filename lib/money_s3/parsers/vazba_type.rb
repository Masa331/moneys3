require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/doklad'

module MoneyS3
  module Parsers
    class VazbaType
      include BaseParser

      def typ
        at :Typ
      end

      def pod_typ
        at :PodTyp
      end

      def doklad
        submodel_at(Doklad, :Doklad)
      end

      def to_h
        { typ: typ,
          pod_typ: pod_typ,
          doklad: doklad.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end