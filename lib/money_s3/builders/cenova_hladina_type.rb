module MoneyS3
  module Builders
    class CenovaHladinaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        if data.key? :mena
          root << MenaType.new('Mena', data[:mena]).builder
        end
        root << build_element('Skup', data[:skup], data[:skup_attributes]) if data.key? :skup
        root << build_element('Ceny', data[:ceny], data[:ceny_attributes]) if data.key? :ceny
        if data.key? :definice_ceny
          root << DefiniceCeny.new('definiceCeny', data[:definice_ceny]).builder
        end

        root
      end
    end
  end
end