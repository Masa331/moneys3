module MoneyS3
  module Parsers
    class PartnerType
      include BaseParser

      def partner
        submodel_at(FirmaType, 'Partner')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:partner] = partner.to_h_with_attrs if has? 'Partner'

        hash
      end
    end
  end
end