module MoneyS3
  module Builders
    class CinnostType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn

        root
      end
    end
  end
end