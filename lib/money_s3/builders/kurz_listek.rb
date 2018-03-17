require 'money_s3/builders/base_builder'
require 'money_s3/builders/kurz_type'

module MoneyS3
  module Builders
    class KurzListek
      include BaseBuilder

      attr_accessor :banka, :por_cislo, :datum, :seznam_kurzu

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Banka') << banka) if banka
        root << (Ox::Element.new('PorCislo') << por_cislo) if por_cislo
        root << (Ox::Element.new('Datum') << datum) if datum

        if seznam_kurzu
          element = Ox::Element.new('SeznamKurzu')
          seznam_kurzu.each { |i| element << KurzType.new(i, 'Kurz').builder }
          root << element
        end

        root
      end
    end
  end
end