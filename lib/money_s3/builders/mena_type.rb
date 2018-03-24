require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class MenaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :kod
          element = Ox::Element.new('Kod')
          element << attributes[:kod] if attributes[:kod]
          root << element
        end

        if attributes.key? :mnozstvi
          element = Ox::Element.new('Mnozstvi')
          element << attributes[:mnozstvi] if attributes[:mnozstvi]
          root << element
        end

        if attributes.key? :kurs
          element = Ox::Element.new('Kurs')
          element << attributes[:kurs] if attributes[:kurs]
          root << element
        end

        root
      end
    end
  end
end