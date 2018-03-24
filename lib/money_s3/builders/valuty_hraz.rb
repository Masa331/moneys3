require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'

module MoneyS3
  module Builders
    class ValutyHraz
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :castka
          element = Ox::Element.new('Castka')
          element << attributes[:castka] if attributes[:castka]
          root << element
        end

        if attributes.key? :mena
          root << MenaType.new(attributes[:mena], 'Mena').builder
        end

        root
      end
    end
  end
end