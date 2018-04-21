module MoneyS3
  module Parsers
    class Data3
      include BaseParser

      def uc_pohyb
        submodel_at(UcPohybType, 'UcPohyb')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:uc_pohyb] = uc_pohyb.to_h_with_attrs if has? 'UcPohyb'

        hash
      end
    end
  end
end