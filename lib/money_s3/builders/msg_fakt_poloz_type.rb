require 'money_s3/builders/base_builder'
require 'money_s3/builders/msg_poloz_type'

module MoneyS3
  module Builders
    class MsgFaktPolozType
      include BaseBuilder

      attr_accessor :skl_polozka

      def builder
        root = Ox::Element.new(element_name)

        root << MsgPolozType.new(skl_polozka, 'SklPolozka').builder if skl_polozka

        root
      end
    end
  end
end