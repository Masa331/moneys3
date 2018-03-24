require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class DalsiSazba
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :hladina_dph
          element = Ox::Element.new('HladinaDPH')
          element << attributes[:hladina_dph] if attributes[:hladina_dph]
          root << element
        end

        if attributes.key? :sazba
          element = Ox::Element.new('Sazba')
          element << attributes[:sazba] if attributes[:sazba]
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

        root
      end
    end
  end
end