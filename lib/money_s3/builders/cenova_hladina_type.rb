module MoneyS3
  module Builders
    class CenovaHladinaType
      include ParserCore::BaseBuilder
      include Groups::DefiniceCeny

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end
        root << build_element('Skup', data[:skup], data[:skup_attributes]) if data.key? :skup
        root << build_element('Ceny', data[:ceny], data[:ceny_attributes]) if data.key? :ceny

        mega.each do |r|
          r.nodes.each { |n| root << n }
        end

        root
      end
    end
  end
end