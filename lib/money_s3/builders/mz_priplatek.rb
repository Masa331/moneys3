require 'money_s3/builders/base_builder'
require 'money_s3/builders/typ_priplatku_type'

module MoneyS3
  module Builders
    class MzPriplatek
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :prip_hodin
          element = Ox::Element.new('PripHodin')
          element << attributes[:prip_hodin] if attributes[:prip_hodin]
          root << element
        end

        if attributes.key? :typ_priplatku
          root << TypPriplatkuType.new(attributes[:typ_priplatku], 'TypPriplatku').builder
        end

        root
      end
    end
  end
end