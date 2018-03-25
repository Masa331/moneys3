require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/parametr_type'

module MoneyS3
  module Parsers
    class ParametrKartaType
      include BaseParser

      def poradi
        at 'Poradi'
      end

      def value
        at 'Value'
      end

      def parametr
        submodel_at(ParametrType, 'Parametr')
      end

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:poradi] = poradi if has? 'Poradi'
        hash[:value] = value if has? 'Value'
        hash[:parametr] = parametr.to_h if has? 'Parametr'

        hash
      end
    end
  end
end