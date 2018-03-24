require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class NepPlatidloType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :kod
          element = Ox::Element.new('Kod')
          element << attributes[:kod] if attributes[:kod]
          root << element
        end

        if attributes.key? :popis
          element = Ox::Element.new('Popis')
          element << attributes[:popis] if attributes[:popis]
          root << element
        end

        if attributes.key? :var_symb
          element = Ox::Element.new('VarSymb')
          element << attributes[:var_symb] if attributes[:var_symb]
          root << element
        end

        root
      end
    end
  end
end