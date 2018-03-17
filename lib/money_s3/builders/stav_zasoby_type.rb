require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class StavZasobyType
      include BaseBuilder

      attr_accessor :zasoba, :rezervace, :objednano

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zasoba') << zasoba) if zasoba
        root << (Ox::Element.new('Rezervace') << rezervace) if rezervace
        root << (Ox::Element.new('Objednano') << objednano) if objednano

        root
      end
    end
  end
end