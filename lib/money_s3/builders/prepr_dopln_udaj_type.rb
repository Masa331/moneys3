require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class PreprDoplnUdajType
      include BaseBuilder

      attr_accessor :zkrat, :popis, :poznamka

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka

        root
      end
    end
  end
end