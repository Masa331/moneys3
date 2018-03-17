require 'money_s3/builders/base_builder'
require 'money_s3/builders/popt_vyd'

module MoneyS3
  module Builders
    class SeznamPoptVyd
      include BaseBuilder

      attr_accessor :popt_vyd

      def builder
        root = Ox::Element.new(element_name)

        if popt_vyd
          popt_vyd.each { |i| root << PoptVyd.new(i, 'PoptVyd').builder }
        end

        root
      end
    end
  end
end