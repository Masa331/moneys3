require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Stredisko
      include BaseBuilder

      attr_accessor :zkrat, :nazev, :pozn

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        root
      end
    end
  end
end