require 'money_s3/builders/base_builder'
require 'money_s3/builders/kurz_listek'

module MoneyS3
  module Builders
    class SeznamKurzListku
      include BaseBuilder

      attr_accessor :kurz_listek

      def builder
        root = Ox::Element.new(element_name)

        if kurz_listek
          kurz_listek.each { |i| root << KurzListek.new(i, 'KurzListek').builder }
        end

        root
      end
    end
  end
end