require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mena_type'

module MoneyS3
  module Parsers
    class ValutyHraz
      include BaseParser

      def castka
        at :Castka
      end

      def mena
        submodel_at(MenaType, :Mena)
      end

      def to_h
        { castka: castka,
          mena: mena.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end