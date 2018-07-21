module MoneyS3
  module Parsers
    class ParametrKartaType
      include ParserCore::BaseParser

      def parametr
        submodel_at(ParametrType, 'Parametr')
      end

      def poradi
        at 'Poradi'
      end

      def poradi_attributes
        attributes_at 'Poradi'
      end

      def value
        at 'Value'
      end

      def value_attributes
        attributes_at 'Value'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:parametr] = parametr.to_h if has? 'Parametr'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:poradi_attributes] = poradi_attributes if has? 'Poradi'
        hash[:value] = value if has? 'Value'
        hash[:value_attributes] = value_attributes if has? 'Value'

        hash
      end
    end
  end
end