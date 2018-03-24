require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class SeznamType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        root
      end
    end
  end
end