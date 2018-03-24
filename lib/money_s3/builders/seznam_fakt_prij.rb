require 'money_s3/builders/base_builder'
require 'money_s3/builders/fakt_prij'

module MoneyS3
  module Builders
    class SeznamFaktPrij
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :fakt_prij
          attributes[:fakt_prij].each { |i| root << FaktPrij.new(i, 'FaktPrij').builder }
        end

        root
      end
    end
  end
end