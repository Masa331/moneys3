require 'money_s3/builders/base_builder'
require 'money_s3/builders/zakazka'

module MoneyS3
  module Builders
    class SeznamZakazka
      include BaseBuilder

      attr_accessor :zakazka

      def builder
        root = Ox::Element.new(element_name)

        if zakazka
          zakazka.each { |i| root << Zakazka.new(i, 'Zakazka').builder }
        end

        root
      end
    end
  end
end