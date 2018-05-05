module MoneyS3
  module Builders
    class UcPohybType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('Sloupec', data[:sloupec]) if data.key? :sloupec
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn

        root
      end
    end
  end
end