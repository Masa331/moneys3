require 'money_s3/builders/base_builder'
require 'money_s3/builders/prodejka'

module MoneyS3
  module Builders
    class SeznamProdejka
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :prodejka
          attributes[:prodejka].each { |i| root << Prodejka.new(i, 'Prodejka').builder }
        end

        root
      end
    end
  end
end