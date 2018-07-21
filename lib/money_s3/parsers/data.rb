module MoneyS3
  module Parsers
    class Data
      include ParserCore::BaseParser

      def fakt_vyd
        submodel_at(FakturaType, 'FaktVyd')
      end

      def fakt_prij
        submodel_at(FakturaType, 'FaktPrij')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:fakt_vyd] = fakt_vyd.to_h if has? 'FaktVyd'
        hash[:fakt_prij] = fakt_prij.to_h if has? 'FaktPrij'

        hash
      end
    end
  end
end