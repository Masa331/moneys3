require 'money_s3/builders/base_builder'
require 'money_s3/builders/dl_vyd'

module MoneyS3
  module Builders
    class SeznamDLVyd
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :dl_vyd
          data[:dl_vyd].each { |i| root << DLVyd.new('DLVyd', i).builder }
        end

        root
      end
    end
  end
end