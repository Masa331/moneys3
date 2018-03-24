require 'money_s3/builders/base_builder'
require 'money_s3/builders/kurz_type'

module MoneyS3
  module Builders
    class KurzListek
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :banka
          element = Ox::Element.new('Banka')
          element << attributes[:banka] if attributes[:banka]
          root << element
        end

        if attributes.key? :por_cislo
          element = Ox::Element.new('PorCislo')
          element << attributes[:por_cislo] if attributes[:por_cislo]
          root << element
        end

        if attributes.key? :datum
          element = Ox::Element.new('Datum')
          element << attributes[:datum] if attributes[:datum]
          root << element
        end

        if attributes.key? :seznam_kurzu
          element = Ox::Element.new('SeznamKurzu')
          attributes[:seznam_kurzu].each { |i| element << KurzType.new(i, 'Kurz').builder }
          root << element
        end

        root
      end
    end
  end
end