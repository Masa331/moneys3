require 'money_s3/builders/base_builder'
require 'money_s3/builders/nab_vyd'

module MoneyS3
  module Builders
    class SeznamNabVyd
      include BaseBuilder

      attr_accessor :nab_vyd

      def builder
        root = Ox::Element.new(element_name)

        if nab_vyd
          nab_vyd.each { |i| root << NabVyd.new(i, 'NabVyd').builder }
        end

        root
      end
    end
  end
end