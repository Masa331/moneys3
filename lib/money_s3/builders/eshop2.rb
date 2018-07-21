module MoneyS3
  module Builders
    class Eshop2
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('IN_Export', data[:in_export], data[:in_export_attributes]) if data.key? :in_export
        root << build_element('IN_Changed', data[:in_changed], data[:in_changed_attributes]) if data.key? :in_changed
        root << build_element('IN_Id', data[:in_id], data[:in_id_attributes]) if data.key? :in_id
        root << build_element('IN_Jmeno', data[:in_jmeno], data[:in_jmeno_attributes]) if data.key? :in_jmeno
        root << build_element('IN_Heslo', data[:in_heslo], data[:in_heslo_attributes]) if data.key? :in_heslo
        root << build_element('IN_Dealer', data[:in_dealer], data[:in_dealer_attributes]) if data.key? :in_dealer
        root << build_element('IN_DSkup', data[:in_d_skup], data[:in_d_skup_attributes]) if data.key? :in_d_skup
        root << build_element('IN_IndSlev', data[:in_ind_slev], data[:in_ind_slev_attributes]) if data.key? :in_ind_slev
        root << build_element('IN_Soukrom', data[:in_soukrom], data[:in_soukrom_attributes]) if data.key? :in_soukrom
        root << build_element('IN_DSkupZkratka', data[:in_d_skup_zkratka], data[:in_d_skup_zkratka_attributes]) if data.key? :in_d_skup_zkratka

        root
      end
    end
  end
end