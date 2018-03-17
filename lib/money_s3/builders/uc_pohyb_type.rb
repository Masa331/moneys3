require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UcPohybType
      include BaseBuilder

      attr_accessor :zkrat, :popis, :typ, :sloupec, :pozn

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Sloupec') << sloupec) if sloupec
        root << (Ox::Element.new('Pozn') << pozn) if pozn

        root
      end
    end
  end
end