module MoneyS3
  module Builders
    class NepPlatidloType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Kod', data[:kod], data[:kod_attributes]) if data.key? :kod
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('VarSymb', data[:var_symb], data[:var_symb_attributes]) if data.key? :var_symb

        root
      end
    end
  end
end