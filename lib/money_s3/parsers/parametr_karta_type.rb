require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/parametr_type'

module MoneyS3
  module Parsers
    class ParametrKartaType
      include BaseParser

      def poradi
        at :Poradi
      end

      def value
        at :Value
      end

      def parametr
        submodel_at(ParametrType, :Parametr)
      end

      def to_h
        hash = {}

        hash[:poradi] = poradi if raw.key? :Poradi
        hash[:value] = value if raw.key? :Value
        hash[:parametr] = parametr.to_h if raw.key? :Parametr

        hash
      end
    end
  end
end