require 'money_s3/builders/base_builder'
require 'money_s3/builders/km_karta_type'
require 'money_s3/builders/sklad_type'

module MoneyS3
  module Builders
    class AlternativaPrislusenstviType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :poc_mj
          element = Ox::Element.new('PocMJ')
          element << attributes[:poc_mj] if attributes[:poc_mj]
          root << element
        end

        if attributes.key? :poradi
          element = Ox::Element.new('Poradi')
          element << attributes[:poradi] if attributes[:poradi]
          root << element
        end

        if attributes.key? :druh_komp
          element = Ox::Element.new('DruhKomp')
          element << attributes[:druh_komp] if attributes[:druh_komp]
          root << element
        end

        if attributes.key? :symetric
          element = Ox::Element.new('Symetric')
          element << attributes[:symetric] if attributes[:symetric]
          root << element
        end

        if attributes.key? :km_karta
          root << KmKartaType.new(attributes[:km_karta], 'KmKarta').builder
        end

        if attributes.key? :sklad
          root << SkladType.new(attributes[:sklad], 'Sklad').builder
        end

        root
      end
    end
  end
end