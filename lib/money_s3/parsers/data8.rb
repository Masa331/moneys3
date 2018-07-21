module MoneyS3
  module Parsers
    class Data8
      include ParserCore::BaseParser

      def mzda
        submodel_at(MzdaType, 'Mzda')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:mzda] = mzda.to_h if has? 'Mzda'

        hash
      end
    end
  end
end