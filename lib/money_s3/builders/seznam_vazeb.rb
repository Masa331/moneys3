require 'money_s3/builders/base_builder'
require 'money_s3/builders/vazba_type'

module MoneyS3
  module Builders
    class SeznamVazeb
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :vazba
          root << VazbaType.new(attributes[:vazba], 'Vazba').builder
        end

        root
      end
    end
  end
end