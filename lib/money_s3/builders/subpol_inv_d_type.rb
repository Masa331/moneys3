require 'money_s3/builders/base_builder'
require 'money_s3/builders/pol_inv_dokl_type'

module MoneyS3
  module Builders
    class SubpolInvDType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :mn_sada
          element = Ox::Element.new('MnSada')
          element << attributes[:mn_sada] if attributes[:mn_sada]
          root << element
        end

        if attributes.key? :polozka
          root << PolInvDoklType.new(attributes[:polozka], 'Polozka').builder
        end

        root
      end
    end
  end
end