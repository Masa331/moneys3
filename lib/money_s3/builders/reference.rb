require 'money_s3/builders/base_builder'
require 'money_s3/builders/kusovnik_type'
require 'money_s3/builders/vzor_komponenta_type'

module MoneyS3
  module Builders
    class Reference
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :typ_kusovnik
          root << KusovnikType.new(attributes[:typ_kusovnik], 'TypKusovnik').builder
        end

        if attributes.key? :vzor
          root << VzorKomponentaType.new(attributes[:vzor], 'Vzor').builder
        end

        root
      end
    end
  end
end