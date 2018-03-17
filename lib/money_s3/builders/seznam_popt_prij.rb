require 'money_s3/builders/base_builder'
require 'money_s3/builders/popt_prij'

module MoneyS3
  module Builders
    class SeznamPoptPrij
      include BaseBuilder

      attr_accessor :popt_prij

      def builder
        root = Ox::Element.new(element_name)

        if popt_prij
          popt_prij.each { |i| root << PoptPrij.new(i, 'PoptPrij').builder }
        end

        root
      end
    end
  end
end