require 'money_s3/parsers/base_parser'
require 'money_s3/parsers/cenova_hladina_type'
require 'money_s3/parsers/mena_type'
require 'money_s3/parsers/cena_type'

module MoneyS3
  module Parsers
    class PC
      include BaseParser

      def dealer_skupina
        at :DealerSkupina
      end

      def sdph
        at :SDPH
      end

      def zaok
        at :Zaok
      end

      def zpusob_zao
        at :ZpusobZao
      end

      def vyp_pr_ceny
        at :VypPrCeny
      end

      def vych_a
        at :VychA
      end

      def zpusob_zm_a
        at :ZpusobZmA
      end

      def vych_b
        at :VychB
      end

      def zpusob_zm_b
        at :ZpusobZmB
      end

      def hladina
        submodel_at(CenovaHladinaType, :Hladina)
      end

      def mena
        submodel_at(MenaType, :Mena)
      end

      def cena1
        submodel_at(CenaType, :Cena1)
      end

      def cena2
        submodel_at(CenaType, :Cena2)
      end

      def cena3
        submodel_at(CenaType, :Cena3)
      end

      def cena4
        submodel_at(CenaType, :Cena4)
      end

      def cena5
        submodel_at(CenaType, :Cena5)
      end

      def to_h
        { dealer_skupina: dealer_skupina,
          sdph: sdph,
          zaok: zaok,
          zpusob_zao: zpusob_zao,
          vyp_pr_ceny: vyp_pr_ceny,
          vych_a: vych_a,
          zpusob_zm_a: zpusob_zm_a,
          vych_b: vych_b,
          zpusob_zm_b: zpusob_zm_b,
          hladina: hladina.to_h,
          mena: mena.to_h,
          cena1: cena1.to_h,
          cena2: cena2.to_h,
          cena3: cena3.to_h,
          cena4: cena4.to_h,
          cena5: cena5.to_h
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end