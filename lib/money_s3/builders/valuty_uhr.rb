require 'money_s3/builders/base_builder'
require 'money_s3/builders/mena_type'

module MoneyS3
  module Builders
    class ValutyUhr
      include BaseBuilder

      attr_accessor :castka, :mena

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Castka') << castka) if castka
        root << MenaType.new(mena, 'Mena').builder if mena

        root
      end
    end
  end
end