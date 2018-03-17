require 'money_s3/builders/base_builder'
require 'money_s3/builders/pol_skl_dokl_type'

module MoneyS3
  module Builders
    class DefSubPolType
      include BaseBuilder

      attr_accessor :mj_na_sadu, :polozka

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('MJNaSadu') << mj_na_sadu) if mj_na_sadu
        root << PolSklDoklType.new(polozka, 'Polozka').builder if polozka

        root
      end
    end
  end
end