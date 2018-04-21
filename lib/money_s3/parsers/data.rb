module MoneyS3
  module Parsers
    class Data
      include BaseParser

      def fakt_vyd
        submodel_at(FakturaType, 'FaktVyd')
      end

      def fakt_prij
        submodel_at(FakturaType, 'FaktPrij')
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:fakt_vyd] = fakt_vyd.to_h_with_attrs if has? 'FaktVyd'
        hash[:fakt_prij] = fakt_prij.to_h_with_attrs if has? 'FaktPrij'

        hash
      end
    end
  end
end