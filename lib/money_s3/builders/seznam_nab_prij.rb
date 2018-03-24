require 'money_s3/builders/base_builder'
require 'money_s3/builders/nab_prij'

module MoneyS3
  module Builders
    class SeznamNabPrij
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :nab_prij
          attributes[:nab_prij].each { |i| root << NabPrij.new(i, 'NabPrij').builder }
        end

        root
      end
    end
  end
end