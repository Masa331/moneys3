module MoneyS3
  module Builders
    class PrepravceType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        root << build_element('KodOdesil', data[:kod_odesil], data[:kod_odesil_attributes]) if data.key? :kod_odesil

        root
      end
    end
  end
end