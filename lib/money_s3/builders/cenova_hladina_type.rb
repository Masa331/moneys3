module MoneyS3
  module Builders
    class CenovaHladinaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end
        root << build_element('Skup', data[:skup]) if data.key? :skup
        root << build_element('Ceny', data[:ceny]) if data.key? :ceny

        root
      end
    end
  end
end