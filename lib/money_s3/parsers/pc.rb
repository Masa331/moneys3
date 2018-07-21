module MoneyS3
  module Parsers
    class PC
      include ParserCore::BaseParser

      def hladina
        submodel_at(CenovaHladinaType, 'Hladina')
      end

      def dealer_skupina
        at 'DealerSkupina'
      end

      def dealer_skupina_attributes
        attributes_at 'DealerSkupina'
      end

      def sdph
        at 'SDPH'
      end

      def sdph_attributes
        attributes_at 'SDPH'
      end

      def zaok
        at 'Zaok'
      end

      def zaok_attributes
        attributes_at 'Zaok'
      end

      def zpusob_zao
        at 'ZpusobZao'
      end

      def zpusob_zao_attributes
        attributes_at 'ZpusobZao'
      end

      def mena
        submodel_at(MenaType, 'Mena')
      end

      def vyp_pr_ceny
        at 'VypPrCeny'
      end

      def vyp_pr_ceny_attributes
        attributes_at 'VypPrCeny'
      end

      def vych_a
        at 'VychA'
      end

      def vych_a_attributes
        attributes_at 'VychA'
      end

      def zpusob_zm_a
        at 'ZpusobZmA'
      end

      def zpusob_zm_a_attributes
        attributes_at 'ZpusobZmA'
      end

      def vych_b
        at 'VychB'
      end

      def vych_b_attributes
        attributes_at 'VychB'
      end

      def zpusob_zm_b
        at 'ZpusobZmB'
      end

      def zpusob_zm_b_attributes
        attributes_at 'ZpusobZmB'
      end

      def cena1
        submodel_at(CenaType, 'Cena1')
      end

      def cena2
        submodel_at(CenaType, 'Cena2')
      end

      def cena3
        submodel_at(CenaType, 'Cena3')
      end

      def cena4
        submodel_at(CenaType, 'Cena4')
      end

      def cena5
        submodel_at(CenaType, 'Cena5')
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:hladina] = hladina.to_h if has? 'Hladina'
        hash[:dealer_skupina] = dealer_skupina if has? 'DealerSkupina'
        hash[:dealer_skupina_attributes] = dealer_skupina_attributes if has? 'DealerSkupina'
        hash[:sdph] = sdph if has? 'SDPH'
        hash[:sdph_attributes] = sdph_attributes if has? 'SDPH'
        hash[:zaok] = zaok if has? 'Zaok'
        hash[:zaok_attributes] = zaok_attributes if has? 'Zaok'
        hash[:zpusob_zao] = zpusob_zao if has? 'ZpusobZao'
        hash[:zpusob_zao_attributes] = zpusob_zao_attributes if has? 'ZpusobZao'
        hash[:mena] = mena.to_h if has? 'Mena'
        hash[:vyp_pr_ceny] = vyp_pr_ceny if has? 'VypPrCeny'
        hash[:vyp_pr_ceny_attributes] = vyp_pr_ceny_attributes if has? 'VypPrCeny'
        hash[:vych_a] = vych_a if has? 'VychA'
        hash[:vych_a_attributes] = vych_a_attributes if has? 'VychA'
        hash[:zpusob_zm_a] = zpusob_zm_a if has? 'ZpusobZmA'
        hash[:zpusob_zm_a_attributes] = zpusob_zm_a_attributes if has? 'ZpusobZmA'
        hash[:vych_b] = vych_b if has? 'VychB'
        hash[:vych_b_attributes] = vych_b_attributes if has? 'VychB'
        hash[:zpusob_zm_b] = zpusob_zm_b if has? 'ZpusobZmB'
        hash[:zpusob_zm_b_attributes] = zpusob_zm_b_attributes if has? 'ZpusobZmB'
        hash[:cena1] = cena1.to_h if has? 'Cena1'
        hash[:cena2] = cena2.to_h if has? 'Cena2'
        hash[:cena3] = cena3.to_h if has? 'Cena3'
        hash[:cena4] = cena4.to_h if has? 'Cena4'
        hash[:cena5] = cena5.to_h if has? 'Cena5'

        hash
      end
    end
  end
end