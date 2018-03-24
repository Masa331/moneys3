require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class VyrobniCisloType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :vyrobni_cis
          element = Ox::Element.new('VyrobniCis')
          element << attributes[:vyrobni_cis] if attributes[:vyrobni_cis]
          root << element
        end

        if attributes.key? :datum_vyrob
          element = Ox::Element.new('DatumVyrob')
          element << attributes[:datum_vyrob] if attributes[:datum_vyrob]
          root << element
        end

        if attributes.key? :carovy_kod
          element = Ox::Element.new('CarovyKod')
          element << attributes[:carovy_kod] if attributes[:carovy_kod]
          root << element
        end

        root
      end
    end
  end
end