module MoneyS3
  module Parsers
    class Data8
      include BaseParser

      def mzda
        submodel_at(MzdaType, 'Mzda')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:mzda] = mzda.to_h_with_attrs if has? 'Mzda'

        hash
      end
    end
  end
end