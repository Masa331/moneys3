module MoneyS3
  module Builders
    class VyrobniCisloType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('VyrobniCis', data[:vyrobni_cis]) if data.key? :vyrobni_cis
        root << build_element('DatumVyrob', data[:datum_vyrob]) if data.key? :datum_vyrob
        root << build_element('CarovyKod', data[:carovy_kod]) if data.key? :carovy_kod

        root
      end
    end
  end
end