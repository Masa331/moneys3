require 'money_s3/builders/base_builder'
require 'money_s3/builders/nep_platidlo_type'

module MoneyS3
  module Builders
    class NepPlatbaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :mnozstvi_mj
          element = Ox::Element.new('MnozstviMJ')
          element << attributes[:mnozstvi_mj] if attributes[:mnozstvi_mj]
          root << element
        end

        if attributes.key? :castka
          element = Ox::Element.new('Castka')
          element << attributes[:castka] if attributes[:castka]
          root << element
        end

        if attributes.key? :platidlo
          root << NepPlatidloType.new(attributes[:platidlo], 'Platidlo').builder
        end

        root
      end
    end
  end
end