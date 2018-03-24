require 'money_s3/builders/base_builder'
require 'money_s3/builders/int_dokl'

module MoneyS3
  module Builders
    class SeznamIntDokl
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :int_dokl
          attributes[:int_dokl].each { |i| root << IntDokl.new(i, 'IntDokl').builder }
        end

        root
      end
    end
  end
end