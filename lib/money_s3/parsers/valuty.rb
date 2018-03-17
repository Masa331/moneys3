require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/mena_type'
require 'money_s3/parsers/souhrn_dph_type'

module MoneyS3
  module Parsers
    class Valuty
      include BaseParser

      def celkem
        at :Celkem
      end

      def mena
        submodel_at(MenaType, :Mena)
      end

      def souhrn_dph
        submodel_at(SouhrnDPHType, :SouhrnDPH)
      end

      def to_h
        { celkem: celkem,
          mena: mena.to_h,
          souhrn_dph: souhrn_dph.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end