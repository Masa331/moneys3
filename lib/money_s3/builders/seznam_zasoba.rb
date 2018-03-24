require 'money_s3/builders/base_builder'
require 'money_s3/builders/zasoba'

module MoneyS3
  module Builders
    class SeznamZasoba
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :zasoba
          attributes[:zasoba].each { |i| root << Zasoba.new(i, 'Zasoba').builder }
        end

        root
      end
    end
  end
end