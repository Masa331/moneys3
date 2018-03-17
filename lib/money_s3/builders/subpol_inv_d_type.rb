require 'money_s3/builders/base_builder'
require 'money_s3/builders/pol_inv_dokl_type'

module MoneyS3
  module Builders
    class SubpolInvDType
      include BaseBuilder

      attr_accessor :mn_sada, :polozka

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('MnSada') << mn_sada) if mn_sada
        root << PolInvDoklType.new(polozka, 'Polozka').builder if polozka

        root
      end
    end
  end
end