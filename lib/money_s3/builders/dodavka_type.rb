require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class DodavkaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :oznaceni
          element = Ox::Element.new('Oznaceni')
          element << attributes[:oznaceni] if attributes[:oznaceni]
          root << element
        end

        if attributes.key? :dat_exp
          element = Ox::Element.new('DatExp')
          element << attributes[:dat_exp] if attributes[:dat_exp]
          root << element
        end

        if attributes.key? :pocet_mj
          element = Ox::Element.new('PocetMJ')
          element << attributes[:pocet_mj] if attributes[:pocet_mj]
          root << element
        end

        if attributes.key? :cena
          element = Ox::Element.new('Cena')
          element << attributes[:cena] if attributes[:cena]
          root << element
        end

        root
      end
    end
  end
end