module MoneyS3
  module Parsers
    class Data3
      include ParserCore::BaseParser

      def uc_pohyb
        submodel_at(UcPohybType, 'UcPohyb')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:uc_pohyb] = uc_pohyb.to_h if has? 'UcPohyb'

        hash
      end
    end
  end
end