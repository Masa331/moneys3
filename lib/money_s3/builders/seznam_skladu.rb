require 'money_s3/builders/base_builder'
require 'money_s3/builders/sklad'

module MoneyS3
  module Builders
    class SeznamSkladu
      include BaseBuilder

      attr_accessor :sklad

      def builder
        root = Ox::Element.new(element_name)

        if sklad
          sklad.each { |i| root << Sklad.new(i, 'Sklad').builder }
        end

        root
      end
    end
  end
end