require 'money_s3/builders/base_builder'
require 'money_s3/builders/nab_prij'

module MoneyS3
  module Builders
    class SeznamNabPrij
      include BaseBuilder

      attr_accessor :nab_prij

      def builder
        root = Ox::Element.new(element_name)

        if nab_prij
          nab_prij.each { |i| root << NabPrij.new(i, 'NabPrij').builder }
        end

        root
      end
    end
  end
end