require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class Ucet
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :ucet
          element = Ox::Element.new('Ucet')
          element << attributes[:ucet] if attributes[:ucet]
          root << element
        end

        if attributes.key? :b_kod
          element = Ox::Element.new('BKod')
          element << attributes[:b_kod] if attributes[:b_kod]
          root << element
        end

        if attributes.key? :b_nazev
          element = Ox::Element.new('BNazev')
          element << attributes[:b_nazev] if attributes[:b_nazev]
          root << element
        end

        root
      end
    end
  end
end