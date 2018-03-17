require 'money_s3/builders/base_builder'
require 'money_s3/builders/nep_platidlo_type'

module MoneyS3
  module Builders
    class NepPlatbaType
      include BaseBuilder

      attr_accessor :mnozstvi_mj, :castka, :platidlo

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('MnozstviMJ') << mnozstvi_mj) if mnozstvi_mj
        root << (Ox::Element.new('Castka') << castka) if castka
        root << NepPlatidloType.new(platidlo, 'Platidlo').builder if platidlo

        root
      end
    end
  end
end