module MoneyS3
  module Builders
    class EshopZasobaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('IN_Export', data[:in_export]) if data.key? :in_export
        root << build_element('IN_Changed', data[:in_changed]) if data.key? :in_changed
        root << build_element('IN_Deleted', data[:in_deleted]) if data.key? :in_deleted
        root << build_element('CisKarty', data[:cis_karty]) if data.key? :cis_karty
        root << build_element('CisSkladu', data[:cis_skladu]) if data.key? :cis_skladu
        if data.key? :e_skup
          data[:e_skup].each { |i| root << EkategorieZasobaType.new('eSkup', i).builder }
        end

        root
      end
    end
  end
end