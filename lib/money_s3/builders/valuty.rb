require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'
require 'money_s3/builders/souhrn_dph_type'

module MoneyS3
  module Builders
    class Valuty
      include BaseBuilder

      attr_accessor :celkem, :mena, :souhrn_dph

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Celkem') << celkem) if celkem
        root << MenaType.new(mena, 'Mena').builder if mena
        root << SouhrnDPHType.new(souhrn_dph, 'SouhrnDPH').builder if souhrn_dph

        root
      end
    end
  end
end