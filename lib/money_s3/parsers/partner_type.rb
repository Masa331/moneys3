module MoneyS3
  module Parsers
    class PartnerType
      include ParserCore::BaseParser

      def partner
        submodel_at(FirmaType, 'Partner')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:partner] = partner.to_h if has? 'Partner'

        hash
      end
    end
  end
end