require 'money_s3/builders/base_builder'
require 'money_s3/builders/msg_poloz_type'

module MoneyS3
  module Builders
    class MsgFaktPolozType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        if data.key? :skl_polozka
          root << MsgPolozType.new('SklPolozka', data[:skl_polozka]).builder
        end

        root
      end
    end
  end
end