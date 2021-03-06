module MoneyS3
  module Parsers
    class MzPriplatek
      include ParserCore::BaseParser

      def typ_priplatku
        submodel_at(TypPriplatkuType, 'TypPriplatku')
      end

      def prip_hodin
        at 'PripHodin'
      end

      def prip_hodin_attributes
        attributes_at 'PripHodin'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:typ_priplatku] = typ_priplatku.to_h if has? 'TypPriplatku'
        hash[:prip_hodin] = prip_hodin if has? 'PripHodin'
        hash[:prip_hodin_attributes] = prip_hodin_attributes if has? 'PripHodin'

        hash
      end
    end
  end
end