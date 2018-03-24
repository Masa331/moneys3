require 'money_s3/builders/base_builder'
require 'money_s3/builders/dalsi_sazba'

module MoneyS3
  module Builders
    class SouhrnDPHType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zaklad0
          element = Ox::Element.new('Zaklad0')
          element << attributes[:zaklad0] if attributes[:zaklad0]
          root << element
        end

        if attributes.key? :zaklad5
          element = Ox::Element.new('Zaklad5')
          element << attributes[:zaklad5] if attributes[:zaklad5]
          root << element
        end

        if attributes.key? :zaklad22
          element = Ox::Element.new('Zaklad22')
          element << attributes[:zaklad22] if attributes[:zaklad22]
          root << element
        end

        if attributes.key? :dph5
          element = Ox::Element.new('DPH5')
          element << attributes[:dph5] if attributes[:dph5]
          root << element
        end

        if attributes.key? :dph22
          element = Ox::Element.new('DPH22')
          element << attributes[:dph22] if attributes[:dph22]
          root << element
        end

        if attributes.key? :seznam_dalsi_sazby
          element = Ox::Element.new('SeznamDalsiSazby')
          attributes[:seznam_dalsi_sazby].each { |i| element << DalsiSazba.new(i, 'DalsiSazba').builder }
          root << element
        end

        root
      end
    end
  end
end