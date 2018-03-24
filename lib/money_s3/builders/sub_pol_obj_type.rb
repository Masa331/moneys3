require 'money_s3/builders/base_builder'
require 'money_s3/builders/pol_objedn_type'

module MoneyS3
  module Builders
    class SubPolObjType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :mj_na_sadu
          element = Ox::Element.new('MJNaSadu')
          element << attributes[:mj_na_sadu] if attributes[:mj_na_sadu]
          root << element
        end

        if attributes.key? :polozka
          root << PolObjednType.new(attributes[:polozka], 'Polozka').builder
        end

        root
      end
    end
  end
end