require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class DodavkaType
      include BaseBuilder

      attr_accessor :oznaceni, :dat_exp, :pocet_mj, :cena

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Oznaceni') << oznaceni) if oznaceni
        root << (Ox::Element.new('DatExp') << dat_exp) if dat_exp
        root << (Ox::Element.new('PocetMJ') << pocet_mj) if pocet_mj
        root << (Ox::Element.new('Cena') << cena) if cena

        root
      end
    end
  end
end