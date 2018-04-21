module MoneyS3
  module Builders
    class InvDoklType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('CisloD', data[:cislo_d]) if data.key? :cislo_d
        root << build_element('InvID', data[:inv_id]) if data.key? :inv_id
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Prac', data[:prac]) if data.key? :prac
        root << build_element('Kontr', data[:kontr]) if data.key? :kontr
        root << build_element('Poznamka', data[:poznamka]) if data.key? :poznamka
        if data.key? :polozka
          data[:polozka].each { |i| root << PolInvDoklType.new('Polozka', i).builder }
        end

        root
      end
    end
  end
end