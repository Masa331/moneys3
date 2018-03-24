require 'money_s3/builders/base_builder'
require 'money_s3/builders/dl_prij'

module MoneyS3
  module Builders
    class SeznamDLPrij
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :dl_prij
          attributes[:dl_prij].each { |i| root << DLPrij.new(i, 'DLPrij').builder }
        end

        root
      end
    end
  end
end