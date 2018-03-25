require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/typ_priplatku_type'

module MoneyS3
  module Parsers
    class MzPriplatek
      include BaseParser

      def prip_hodin
        at :PripHodin
      end

      def typ_priplatku
        submodel_at(TypPriplatkuType, :TypPriplatku)
      end

      def to_h
        hash = {}

        hash[:prip_hodin] = prip_hodin if has? :PripHodin
        hash[:typ_priplatku] = typ_priplatku.to_h if has? :TypPriplatku

        hash
      end
    end
  end
end