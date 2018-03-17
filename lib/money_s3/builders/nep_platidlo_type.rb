require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class NepPlatidloType
      include BaseBuilder

      attr_accessor :kod, :popis, :var_symb

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Kod') << kod) if kod
        root << (Ox::Element.new('Popis') << popis) if popis
        root << (Ox::Element.new('VarSymb') << var_symb) if var_symb

        root
      end
    end
  end
end