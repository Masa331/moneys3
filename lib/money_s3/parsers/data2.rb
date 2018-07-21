module MoneyS3
  module Parsers
    class Data2
      include ParserCore::BaseParser

      def fakt_vyd_dpp
        submodel_at(FakturaType, 'FaktVyd_DPP')
      end

      def fakt_prij_dpp
        submodel_at(FakturaType, 'FaktPrij_DPP')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:fakt_vyd_dpp] = fakt_vyd_dpp.to_h if has? 'FaktVyd_DPP'
        hash[:fakt_prij_dpp] = fakt_prij_dpp.to_h if has? 'FaktPrij_DPP'

        hash
      end
    end
  end
end