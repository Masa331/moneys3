require 'money_s3/builders/base_builder'
require 'money_s3/builders/dl_vyd'

module MoneyS3
  module Builders
    class SeznamDLVyd
      include BaseBuilder

      attr_accessor :dl_vyd

      def builder
        root = Ox::Element.new(element_name)

        if dl_vyd
          dl_vyd.each { |i| root << DLVyd.new(i, 'DLVyd').builder }
        end

        root
      end
    end
  end
end