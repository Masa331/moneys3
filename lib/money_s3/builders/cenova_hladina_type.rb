require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'

module MoneyS3
  module Builders
    class CenovaHladinaType
      include BaseBuilder

      attr_accessor :zkrat, :nazev, :pozn, :skup, :ceny, :mena

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Zkrat') << zkrat) if zkrat
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('Skup') << skup) if skup
        root << (Ox::Element.new('Ceny') << ceny) if ceny
        root << MenaType.new(mena, 'Mena').builder if mena

        root
      end
    end
  end
end