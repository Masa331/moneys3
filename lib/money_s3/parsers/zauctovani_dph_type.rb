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
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:typ] = typ if raw.key? :Typ
        hash[:popis] = popis if raw.key? :Popis
        hash[:sd_uc_md] = sd_uc_md if raw.key? :SDUcMD
        hash[:sd_uc_d] = sd_uc_d if raw.key? :SDUcD
        hash[:zd_uc_md] = zd_uc_md if raw.key? :ZDUcMD
        hash[:zd_uc_d] = zd_uc_d if raw.key? :ZDUcD
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:seznam_obdobi_dph] = seznam_obdobi_dph.map(&:to_h) if raw.key? :SeznamObdobiDPH

        hash
      end
    end
  end
end