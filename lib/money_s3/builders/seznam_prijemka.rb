require 'money_s3/builders/base_builder'
require 'money_s3/builders/prijemka'

module MoneyS3
  module Builders
    class SeznamPrijemka
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :prijemka
          attributes[:prijemka].each { |i| root << Prijemka.new(i, 'Prijemka').builder }
        end

        root
      end
    end
  end
end