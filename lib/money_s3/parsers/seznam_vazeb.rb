require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/vazba_type'

module MoneyS3
  module Parsers
    class SeznamVazeb
      include BaseParser

      def vazba
        submodel_at(VazbaType, :Vazba)
      end

      def to_h
        hash = {}

        hash[:vazba] = vazba.to_h if raw.key? :Vazba

        hash
      end
    end
  end
end