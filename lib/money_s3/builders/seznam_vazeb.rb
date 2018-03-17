require 'money_s3/builders/base_builder'
require 'money_s3/builders/vazba_type'

module MoneyS3
  module Builders
    class SeznamVazeb
      include BaseBuilder

      attr_accessor :vazba

      def builder
        root = Ox::Element.new(element_name)

        root << VazbaType.new(vazba, 'Vazba').builder if vazba

        root
      end
    end
  end
end