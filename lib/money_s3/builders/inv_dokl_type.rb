module MoneyS3
  module Builders
    class InvDoklType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('CisloD', data[:cislo_d], data[:cislo_d_attributes]) if data.key? :cislo_d
        root << build_element('InvID', data[:inv_id], data[:inv_id_attributes]) if data.key? :inv_id
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('Prac', data[:prac], data[:prac_attributes]) if data.key? :prac
        root << build_element('Kontr', data[:kontr], data[:kontr_attributes]) if data.key? :kontr
        root << build_element('Poznamka', data[:poznamka], data[:poznamka_attributes]) if data.key? :poznamka
        if data.key? :polozka
          data[:polozka].each { |i| root << PolInvDoklType.new('Polozka', i).builder }
        end

        root
      end
    end
  end
end