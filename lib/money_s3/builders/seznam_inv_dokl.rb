require 'money_s3/builders/base_builder'
require 'money_s3/builders/inv_dokl_type'

module MoneyS3
  module Builders
    class SeznamInvDokl
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :inv_doklad
          attributes[:inv_doklad].each { |i| root << InvDoklType.new(i, 'InvDoklad').builder }
        end

        root
      end
    end
  end
end