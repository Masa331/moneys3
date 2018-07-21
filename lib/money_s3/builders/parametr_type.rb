module MoneyS3
  module Builders
    class ParametrType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('ID', data[:id], data[:id_attributes]) if data.key? :id
        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('Druh', data[:druh], data[:druh_attributes]) if data.key? :druh
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('MJ', data[:mj], data[:mj_attributes]) if data.key? :mj
        root << build_element('UzivCode', data[:uziv_code], data[:uziv_code_attributes]) if data.key? :uziv_code
        root << build_element('Hodnoty', data[:hodnoty], data[:hodnoty_attributes]) if data.key? :hodnoty

        root
      end
    end
  end
end