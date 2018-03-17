require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/obdobi_dph'

module MoneyS3
  module Parsers
    class ZauctovaniDPHType
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def typ
        at :Typ
      end

      def popis
        at :Popis
      end

      def sd_uc_md
        at :SDUcMD
      end

      def sd_uc_d
        at :SDUcD
      end

      def zd_uc_md
        at :ZDUcMD
      end

      def zd_uc_d
        at :ZDUcD
      end

      def pozn
        at :Pozn
      end

      def seznam_obdobi_dph
        array_of_at(ObdobiDPH, [:SeznamObdobiDPH, :ObdobiDPH])
      end

      def to_h
        { zkrat: zkrat,
          typ: typ,
          popis: popis,
          sd_uc_md: sd_uc_md,
          sd_uc_d: sd_uc_d,
          zd_uc_md: zd_uc_md,
          zd_uc_d: zd_uc_d,
          pozn: pozn,
          seznam_obdobi_dph: seznam_obdobi_dph.map(&:to_h)
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end