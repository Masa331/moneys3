require 'money_s3/builders/base_builder'
require 'money_s3/builders/dl_vyd'

module MoneyS3
  module Builders
    class SeznamDLVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :dl_vyd
          attributes[:dl_vyd].each { |i| root << DLVyd.new(i, 'DLVyd').builder }
        end

        root
      end
    end
  end
end