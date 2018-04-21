module MoneyS3
  module Builders
    class PreprDoplnUdajType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka

        root
      end
    end
  end
end