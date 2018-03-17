require 'money_s3/builders/base_builder'
require 'money_s3/builders/kusovnik_type'
require 'money_s3/builders/vzor_komponenta_type'

module MoneyS3
  module Builders
    class Reference
      include BaseBuilder

      attr_accessor :typ_kusovnik, :vzor

      def builder
        root = Ox::Element.new(element_name)

        root << KusovnikType.new(typ_kusovnik, 'TypKusovnik').builder if typ_kusovnik
        root << VzorKomponentaType.new(vzor, 'Vzor').builder if vzor

        root
      end
    end
  end
end