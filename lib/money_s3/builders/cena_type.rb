require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class CenaType
      include BaseBuilder

      attr_accessor :limit, :cena, :sleva

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Limit') << limit) if limit
        root << (Ox::Element.new('Cena') << cena) if cena
        root << (Ox::Element.new('Sleva') << sleva) if sleva

        root
      end
    end
  end
end