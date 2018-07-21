module MoneyS3
  module Builders
    class EkategorieZasobaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('ID', data[:id], data[:id_attributes]) if data.key? :id
        root << build_element('Name', data[:name], data[:name_attributes]) if data.key? :name
        root << build_element('Descript', data[:descript], data[:descript_attributes]) if data.key? :descript
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        root << build_element('Changed', data[:changed], data[:changed_attributes]) if data.key? :changed
        root << build_element('Public', data[:public], data[:public_attributes]) if data.key? :public
        if data.key? :parent
          root << EkategorieZasobaType.new('Parent', data[:parent]).builder
        end

        root
      end
    end
  end
end