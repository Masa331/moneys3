require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'

module MoneyS3
  module Builders
    class CenovaHladinaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zkrat
          element = Ox::Element.new('Zkrat')
          element << attributes[:zkrat] if attributes[:zkrat]
          root << element
        end

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :skup
          element = Ox::Element.new('Skup')
          element << attributes[:skup] if attributes[:skup]
          root << element
        end

        if attributes.key? :ceny
          element = Ox::Element.new('Ceny')
          element << attributes[:ceny] if attributes[:ceny]
          root << element
        end

        if attributes.key? :mena
          root << MenaType.new(attributes[:mena], 'Mena').builder
        end

        root
      end
    end
  end
end