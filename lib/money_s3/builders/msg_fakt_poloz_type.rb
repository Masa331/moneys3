require 'money_s3/builders/base_builder'
require 'money_s3/builders/msg_poloz_type'

module MoneyS3
  module Builders
    class MsgFaktPolozType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :skl_polozka
          root << MsgPolozType.new(attributes[:skl_polozka], 'SklPolozka').builder
        end

        root
      end
    end
  end
end