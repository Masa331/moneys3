require 'money_s3/builders/base_builder'
require 'money_s3/builders/cenova_hladina_type'
require 'money_s3/builders/mena_type'
require 'money_s3/builders/cena_type'

module MoneyS3
  module Builders
    class PC
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :dealer_skupina
          element = Ox::Element.new('DealerSkupina')
          element << attributes[:dealer_skupina] if attributes[:dealer_skupina]
          root << element
        end

        if attributes.key? :sdph
          element = Ox::Element.new('SDPH')
          element << attributes[:sdph] if attributes[:sdph]
          root << element
        end

        if attributes.key? :zaok
          element = Ox::Element.new('Zaok')
          element << attributes[:zaok] if attributes[:zaok]
          root << element
        end

        if attributes.key? :zpusob_zao
          element = Ox::Element.new('ZpusobZao')
          element << attributes[:zpusob_zao] if attributes[:zpusob_zao]
          root << element
        end

        if attributes.key? :vyp_pr_ceny
          element = Ox::Element.new('VypPrCeny')
          element << attributes[:vyp_pr_ceny] if attributes[:vyp_pr_ceny]
          root << element
        end

        if attributes.key? :vych_a
          element = Ox::Element.new('VychA')
          element << attributes[:vych_a] if attributes[:vych_a]
          root << element
        end

        if attributes.key? :zpusob_zm_a
          element = Ox::Element.new('ZpusobZmA')
          element << attributes[:zpusob_zm_a] if attributes[:zpusob_zm_a]
          root << element
        end

        if attributes.key? :vych_b
          element = Ox::Element.new('VychB')
          element << attributes[:vych_b] if attributes[:vych_b]
          root << element
        end

        if attributes.key? :zpusob_zm_b
          element = Ox::Element.new('ZpusobZmB')
          element << attributes[:zpusob_zm_b] if attributes[:zpusob_zm_b]
          root << element
        end

        if attributes.key? :hladina
          root << CenovaHladinaType.new(attributes[:hladina], 'Hladina').builder
        end

        if attributes.key? :mena
          root << MenaType.new(attributes[:mena], 'Mena').builder
        end

        if attributes.key? :cena1
          root << CenaType.new(attributes[:cena1], 'Cena1').builder
        end

        if attributes.key? :cena2
          root << CenaType.new(attributes[:cena2], 'Cena2').builder
        end

        if attributes.key? :cena3
          root << CenaType.new(attributes[:cena3], 'Cena3').builder
        end

        if attributes.key? :cena4
          root << CenaType.new(attributes[:cena4], 'Cena4').builder
        end

        if attributes.key? :cena5
          root << CenaType.new(attributes[:cena5], 'Cena5').builder
        end

        root
      end
    end
  end
end