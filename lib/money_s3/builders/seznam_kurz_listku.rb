require 'money_s3/builders/base_builder'
require 'money_s3/builders/kurz_listek'

module MoneyS3
  module Builders
    class SeznamKurzListku
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :kurz_listek
          attributes[:kurz_listek].each { |i| root << KurzListek.new(i, 'KurzListek').builder }
        end

        root
      end
    end
  end
end