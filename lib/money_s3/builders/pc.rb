require 'money_s3/builders/base_builder'
require 'money_s3/builders/cenova_hladina_type'
require 'money_s3/builders/mena_type'
require 'money_s3/builders/cena_type'

module MoneyS3
  module Builders
    class PC
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('DealerSkupina', data[:dealer_skupina]) if data.key? :dealer_skupina
        root << build_element('SDPH', data[:sdph]) if data.key? :sdph
        root << build_element('Zaok', data[:zaok]) if data.key? :zaok
        root << build_element('ZpusobZao', data[:zpusob_zao]) if data.key? :zpusob_zao
        root << build_element('VypPrCeny', data[:vyp_pr_ceny]) if data.key? :vyp_pr_ceny
        root << build_element('VychA', data[:vych_a]) if data.key? :vych_a
        root << build_element('ZpusobZmA', data[:zpusob_zm_a]) if data.key? :zpusob_zm_a
        root << build_element('VychB', data[:vych_b]) if data.key? :vych_b
        root << build_element('ZpusobZmB', data[:zpusob_zm_b]) if data.key? :zpusob_zm_b

        if data.key? :hladina
          root << CenovaHladinaType.new('Hladina', data[:hladina]).builder
        end

        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end

        if data.key? :cena1
          root << CenaType.new('Cena1', data[:cena1]).builder
        end

        if data.key? :cena2
          root << CenaType.new('Cena2', data[:cena2]).builder
        end

        if data.key? :cena3
          root << CenaType.new('Cena3', data[:cena3]).builder
        end

        if data.key? :cena4
          root << CenaType.new('Cena4', data[:cena4]).builder
        end

        if data.key? :cena5
          root << CenaType.new('Cena5', data[:cena5]).builder
        end

        root
      end
    end
  end
end