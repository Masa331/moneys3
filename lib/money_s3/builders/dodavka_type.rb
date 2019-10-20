module MoneyS3
  module Builders
    class DodavkaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Oznaceni', data[:oznaceni], data[:oznaceni_attributes]) if data.key? :oznaceni
        root << build_element('DatExp', data[:dat_exp], data[:dat_exp_attributes]) if data.key? :dat_exp
        root << build_element('PocetMJ', data[:pocet_mj], data[:pocet_mj_attributes]) if data.key? :pocet_mj
        root << build_element('Cena', data[:cena], data[:cena_attributes]) if data.key? :cena

        root
      end
    end
  end
end