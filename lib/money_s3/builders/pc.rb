require 'money_s3/builders/base_builder'
require 'money_s3/builders/cenova_hladina_type'
require 'money_s3/builders/mena_type'
require 'money_s3/builders/cena_type'

module MoneyS3
  module Builders
    class PC
      include BaseBuilder

      attr_accessor :dealer_skupina, :sdph, :zaok, :zpusob_zao, :vyp_pr_ceny, :vych_a, :zpusob_zm_a, :vych_b, :zpusob_zm_b, :hladina, :mena, :cena1, :cena2, :cena3, :cena4, :cena5

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('DealerSkupina') << dealer_skupina) if dealer_skupina
        root << (Ox::Element.new('SDPH') << sdph) if sdph
        root << (Ox::Element.new('Zaok') << zaok) if zaok
        root << (Ox::Element.new('ZpusobZao') << zpusob_zao) if zpusob_zao
        root << (Ox::Element.new('VypPrCeny') << vyp_pr_ceny) if vyp_pr_ceny
        root << (Ox::Element.new('VychA') << vych_a) if vych_a
        root << (Ox::Element.new('ZpusobZmA') << zpusob_zm_a) if zpusob_zm_a
        root << (Ox::Element.new('VychB') << vych_b) if vych_b
        root << (Ox::Element.new('ZpusobZmB') << zpusob_zm_b) if zpusob_zm_b
        root << CenovaHladinaType.new(hladina, 'Hladina').builder if hladina
        root << MenaType.new(mena, 'Mena').builder if mena
        root << CenaType.new(cena1, 'Cena1').builder if cena1
        root << CenaType.new(cena2, 'Cena2').builder if cena2
        root << CenaType.new(cena3, 'Cena3').builder if cena3
        root << CenaType.new(cena4, 'Cena4').builder if cena4
        root << CenaType.new(cena5, 'Cena5').builder if cena5

        root
      end
    end
  end
end