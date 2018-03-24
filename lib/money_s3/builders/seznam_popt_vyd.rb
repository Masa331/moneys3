require 'money_s3/builders/base_builder'
require 'money_s3/builders/popt_vyd'

module MoneyS3
  module Builders
    class SeznamPoptVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :popt_vyd
          attributes[:popt_vyd].each { |i| root << PoptVyd.new(i, 'PoptVyd').builder }
        end

        root
      end
    end
  end
end