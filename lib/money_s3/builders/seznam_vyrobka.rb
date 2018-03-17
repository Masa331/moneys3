require 'money_s3/builders/base_builder'
require 'money_s3/builders/vyrobka'

module MoneyS3
  module Builders
    class SeznamVyrobka
      include BaseBuilder

      attr_accessor :vyrobka

      def builder
        root = Ox::Element.new(element_name)

        if vyrobka
          vyrobka.each { |i| root << Vyrobka.new(i, 'Vyrobka').builder }
        end

        root
      end
    end
  end
end