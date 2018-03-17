require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/pol_inv_dokl_type'

module MoneyS3
  module Parsers
    class SubpolInvDType
      include BaseParser

      def mn_sada
        at :MnSada
      end

      def polozka
        submodel_at(PolInvDoklType, :Polozka)
      end

      def to_h
        { mn_sada: mn_sada,
          polozka: polozka.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end