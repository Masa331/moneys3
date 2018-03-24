require 'money_s3/builders/base_builder'
require 'money_s3/builders/valuty'

module MoneyS3
  module Builders
    class SouhrnDPHPolType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zaklad_mj
          element = Ox::Element.new('Zaklad_MJ')
          element << attributes[:zaklad_mj] if attributes[:zaklad_mj]
          root << element
        end

        if attributes.key? :dph_mj
          element = Ox::Element.new('DPH_MJ')
          element << attributes[:dph_mj] if attributes[:dph_mj]
          root << element
        end

        if attributes.key? :zaklad
          element = Ox::Element.new('Zaklad')
          element << attributes[:zaklad] if attributes[:zaklad]
          root << element
        end

        if attributes.key? :dph
          element = Ox::Element.new('DPH')
          element << attributes[:dph] if attributes[:dph]
          root << element
        end

        if attributes.key? :valuty
          root << Valuty.new(attributes[:valuty], 'Valuty').builder
        end

        root
      end
    end
  end
end