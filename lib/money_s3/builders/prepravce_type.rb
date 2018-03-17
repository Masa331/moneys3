require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class PrepravceType
      include BaseBuilder

      attr_accessor :zkrat, :nazev, :poznamka, :kod_odesil

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('Poznamka') << poznamka) if poznamka
        root << (Ox::Element.new('KodOdesil') << kod_odesil) if kod_odesil

        root
      end
    end
  end
end