require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mena_type'

module MoneyS3
  module Parsers
    class ValutyUhr
      include BaseParser

      def castka
        at :Castka
      end

      def mena
        submodel_at(MenaType, :Mena)
      end

      def to_h
        hash = {}

        hash[:castka] = castka if raw.key? :Castka
        hash[:mena] = mena.to_h if raw.key? :Mena

        hash
      end
    end
  end
end