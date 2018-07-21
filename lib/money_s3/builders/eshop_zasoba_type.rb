module MoneyS3
  module Builders
    class EshopZasobaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('IN_Export', data[:in_export], data[:in_export_attributes]) if data.key? :in_export
        root << build_element('IN_Changed', data[:in_changed], data[:in_changed_attributes]) if data.key? :in_changed
        root << build_element('IN_Deleted', data[:in_deleted], data[:in_deleted_attributes]) if data.key? :in_deleted
        root << build_element('CisKarty', data[:cis_karty], data[:cis_karty_attributes]) if data.key? :cis_karty
        root << build_element('CisSkladu', data[:cis_skladu], data[:cis_skladu_attributes]) if data.key? :cis_skladu
        if data.key? :e_skup
          data[:e_skup].each { |i| root << EkategorieZasobaType.new('eSkup', i).builder }
        end

        root
      end
    end
  end
end