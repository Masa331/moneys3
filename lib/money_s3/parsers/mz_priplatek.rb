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
        { prip_hodin: prip_hodin,
          typ_priplatku: typ_priplatku.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end