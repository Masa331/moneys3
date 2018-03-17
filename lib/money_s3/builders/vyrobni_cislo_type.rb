require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VyrobniCisloType
      include BaseBuilder

      attr_accessor :vyrobni_cis, :datum_vyrob, :carovy_kod

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('VyrobniCis') << vyrobni_cis) if vyrobni_cis
        root << (Ox::Element.new('DatumVyrob') << datum_vyrob) if datum_vyrob
        root << (Ox::Element.new('CarovyKod') << carovy_kod) if carovy_kod

        root
      end
    end
  end
end