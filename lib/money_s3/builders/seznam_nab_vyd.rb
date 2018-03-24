require 'money_s3/builders/base_builder'
require 'money_s3/builders/nab_vyd'

module MoneyS3
  module Builders
    class SeznamNabVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :nab_vyd
          attributes[:nab_vyd].each { |i| root << NabVyd.new(i, 'NabVyd').builder }
        end

        root
      end
    end
  end
end