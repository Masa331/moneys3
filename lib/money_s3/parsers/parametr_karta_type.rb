module MoneyS3
  module Parsers
    class ParametrKartaType
      include BaseParser

      def parametr
        submodel_at(ParametrType, 'Parametr')
      end

      def poradi
        at 'Poradi'
      end

      def value
        at 'Value'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:parametr] = parametr.to_h_with_attrs if has? 'Parametr'
        hash[:poradi] = poradi if has? 'Poradi'
        hash[:value] = value if has? 'Value'

        hash
      end
    end
  end
end