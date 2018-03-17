require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/valuty'

module MoneyS3
  module Parsers
    class SouhrnDPHPolType
      include BaseParser

      def zaklad_mj
        at :Zaklad_MJ
      end

      def dph_mj
        at :DPH_MJ
      end

      def zaklad
        at :Zaklad
      end

      def dph
        at :DPH
      end

      def valuty
        submodel_at(Valuty, :Valuty)
      end

      def to_h
        { zaklad_mj: zaklad_mj,
          dph_mj: dph_mj,
          zaklad: zaklad,
          dph: dph,
          valuty: valuty.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end