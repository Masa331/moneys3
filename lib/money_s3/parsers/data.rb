require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/faktura_type'

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

      def to_h
        hash = WithAttributes.new({})
        hash.attributes = attributes

        hash[:fakt_vyd] = fakt_vyd.to_h if has? 'FaktVyd'
        hash[:fakt_prij] = fakt_prij.to_h if has? 'FaktPrij'

        hash
      end
    end
  end
end