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
        { poradi: poradi,
          value: value,
          parametr: parametr.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end