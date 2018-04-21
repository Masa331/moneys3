module MoneyS3
  module Parsers
    class Data2
      include BaseParser

      def fakt_vyd_dpp
        submodel_at(FakturaType, 'FaktVyd_DPP')
      end

      def fakt_prij_dpp
        submodel_at(FakturaType, 'FaktPrij_DPP')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:fakt_vyd_dpp] = fakt_vyd_dpp.to_h_with_attrs if has? 'FaktVyd_DPP'
        hash[:fakt_prij_dpp] = fakt_prij_dpp.to_h_with_attrs if has? 'FaktPrij_DPP'

        hash
      end
    end
  end
end