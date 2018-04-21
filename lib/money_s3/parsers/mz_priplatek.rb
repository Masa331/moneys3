module MoneyS3
  module Parsers
    class MzPriplatek
      include BaseParser

      def typ_priplatku
        submodel_at(TypPriplatkuType, 'TypPriplatku')
      end

      def prip_hodin
        at 'PripHodin'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:typ_priplatku] = typ_priplatku.to_h_with_attrs if has? 'TypPriplatku'
        hash[:prip_hodin] = prip_hodin if has? 'PripHodin'

        hash
      end
    end
  end
end