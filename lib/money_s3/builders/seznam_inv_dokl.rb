require 'money_s3/builders/base_builder'
require 'money_s3/builders/inv_dokl_type'

module MoneyS3
  module Builders
    class SeznamInvDokl
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :inv_doklad
          data[:inv_doklad].each { |i| root << InvDoklType.new('InvDoklad', i).builder }
        end

        root
      end
    end
  end
end