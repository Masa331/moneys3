module MoneyS3
  module Parsers
    class PC < ProdejniCenaType
      include BaseParser

      def hladina
        submodel_at(CenovaHladinaType, 'Hladina')
      end

      def dealer_skupina
        at 'DealerSkupina'
      end

      def sdph
        at 'SDPH'
      end

      def zaok
        at 'Zaok'
      end

      def zpusob_zao
        at 'ZpusobZao'
      end

      def mena
        submodel_at(MenaType, 'Mena')
      end

      def vyp_pr_ceny
        at 'VypPrCeny'
      end

      def vych_a
        at 'VychA'
      end

      def zpusob_zm_a
        at 'ZpusobZmA'
      end

      def vych_b
        at 'VychB'
      end

      def zpusob_zm_b
        at 'ZpusobZmB'
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

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:hladina] = hladina.to_h_with_attrs if has? 'Hladina'
        hash[:dealer_skupina] = dealer_skupina if has? 'DealerSkupina'
        hash[:sdph] = sdph if has? 'SDPH'
        hash[:zaok] = zaok if has? 'Zaok'
        hash[:zpusob_zao] = zpusob_zao if has? 'ZpusobZao'
        hash[:mena] = mena.to_h_with_attrs if has? 'Mena'
        hash[:vyp_pr_ceny] = vyp_pr_ceny if has? 'VypPrCeny'
        hash[:vych_a] = vych_a if has? 'VychA'
        hash[:zpusob_zm_a] = zpusob_zm_a if has? 'ZpusobZmA'
        hash[:vych_b] = vych_b if has? 'VychB'
        hash[:zpusob_zm_b] = zpusob_zm_b if has? 'ZpusobZmB'
        hash[:cena1] = cena1.to_h_with_attrs if has? 'Cena1'
        hash[:cena2] = cena2.to_h_with_attrs if has? 'Cena2'
        hash[:cena3] = cena3.to_h_with_attrs if has? 'Cena3'
        hash[:cena4] = cena4.to_h_with_attrs if has? 'Cena4'
        hash[:cena5] = cena5.to_h_with_attrs if has? 'Cena5'

        hash
        super.merge(hash)
      end
    end
  end
end