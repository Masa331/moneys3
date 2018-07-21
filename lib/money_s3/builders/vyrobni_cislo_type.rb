module MoneyS3
  module Builders
    class VyrobniCisloType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('VyrobniCis', data[:vyrobni_cis], data[:vyrobni_cis_attributes]) if data.key? :vyrobni_cis
        root << build_element('DatumVyrob', data[:datum_vyrob], data[:datum_vyrob_attributes]) if data.key? :datum_vyrob
        root << build_element('CarovyKod', data[:carovy_kod], data[:carovy_kod_attributes]) if data.key? :carovy_kod

        root
      end
    end
  end
end