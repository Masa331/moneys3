require 'money_s3/builders/base_builder'
require 'money_s3/builders/parametr_type'

module MoneyS3
  module Builders
    class ParametrKartaType
      include BaseBuilder

      attr_accessor :poradi, :value, :parametr

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Poradi') << poradi) if poradi
        root << (Ox::Element.new('Value') << value) if value
        root << ParametrType.new(parametr, 'Parametr').builder if parametr

        root
      end
    end
  end
end