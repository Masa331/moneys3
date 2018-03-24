require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class PrepravceType
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

        if attributes.key? :poznamka
          element = Ox::Element.new('Poznamka')
          element << attributes[:poznamka] if attributes[:poznamka]
          root << element
        end

        if attributes.key? :kod_odesil
          element = Ox::Element.new('KodOdesil')
          element << attributes[:kod_odesil] if attributes[:kod_odesil]
          root << element
        end

        root
      end
    end
  end
end