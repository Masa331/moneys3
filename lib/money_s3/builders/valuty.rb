require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'
require 'money_s3/builders/souhrn_dph_type'

module MoneyS3
  module Builders
    class Valuty
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :celkem
          element = Ox::Element.new('Celkem')
          element << attributes[:celkem] if attributes[:celkem]
          root << element
        end

        if attributes.key? :mena
          root << MenaType.new(attributes[:mena], 'Mena').builder
        end

        if attributes.key? :souhrn_dph
          root << SouhrnDPHType.new(attributes[:souhrn_dph], 'SouhrnDPH').builder
        end

        root
      end
    end
  end
end