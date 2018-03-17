require 'money_s3/builders/base_builder'
require 'money_s3/builders/prevodka'

module MoneyS3
  module Builders
    class SeznamPrevodka
      include BaseBuilder

      attr_accessor :prevodka

      def builder
        root = Ox::Element.new(element_name)

        if prevodka
          prevodka.each { |i| root << Prevodka.new(i, 'Prevodka').builder }
        end

        root
      end
    end
  end
end