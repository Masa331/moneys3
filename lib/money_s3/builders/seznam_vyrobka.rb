require 'money_s3/builders/base_builder'
require 'money_s3/builders/vyrobka'

module MoneyS3
  module Builders
    class SeznamVyrobka
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :vyrobka
          attributes[:vyrobka].each { |i| root << Vyrobka.new(i, 'Vyrobka').builder }
        end

        root
      end
    end
  end
end