require 'money_s3/builders/base_builder'
require 'money_s3/builders/vydejka'

module MoneyS3
  module Builders
    class SeznamVydejka
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :vydejka
          attributes[:vydejka].each { |i| root << Vydejka.new(i, 'Vydejka').builder }
        end

        root
      end
    end
  end
end