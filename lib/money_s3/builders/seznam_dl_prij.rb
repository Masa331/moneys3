require 'money_s3/builders/base_builder'
require 'money_s3/builders/dl_prij'

module MoneyS3
  module Builders
    class SeznamDLPrij
      include BaseBuilder

      attr_accessor :dl_prij

      def builder
        root = Ox::Element.new(element_name)

        if dl_prij
          dl_prij.each { |i| root << DLPrij.new(i, 'DLPrij').builder }
        end

        root
      end
    end
  end
end