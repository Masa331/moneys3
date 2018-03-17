require 'money_s3/builders/base_builder'
require 'money_s3/builders/fakt_prij'

module MoneyS3
  module Builders
    class SeznamFaktPrij
      include BaseBuilder

      attr_accessor :fakt_prij

      def builder
        root = Ox::Element.new(element_name)

        if fakt_prij
          fakt_prij.each { |i| root << FaktPrij.new(i, 'FaktPrij').builder }
        end

        root
      end
    end
  end
end