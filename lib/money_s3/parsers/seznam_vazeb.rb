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
        { vazba: vazba.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end