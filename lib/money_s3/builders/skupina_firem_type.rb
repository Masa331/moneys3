require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class SkupinaFiremType
      include BaseBuilder

      attr_accessor :zkratka, :nazev, :poznamka

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkratka') << zkratka) if zkratka
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka

        root
      end
    end
  end
end