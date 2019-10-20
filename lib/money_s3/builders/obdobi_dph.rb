module MoneyS3
  module Builders
    class ObdobiDPH
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('DatumOd', data[:datum_od], data[:datum_od_attributes]) if data.key? :datum_od
        root << build_element('UcMD_1', data[:uc_md_1], data[:uc_md_1_attributes]) if data.key? :uc_md_1
        root << build_element('UcD_1', data[:uc_d_1], data[:uc_d_1_attributes]) if data.key? :uc_d_1
        root << build_element('UcMD_2', data[:uc_md_2], data[:uc_md_2_attributes]) if data.key? :uc_md_2
        root << build_element('UcD_2', data[:uc_d_2], data[:uc_d_2_attributes]) if data.key? :uc_d_2
        root << build_element('UcMD_3', data[:uc_md_3], data[:uc_md_3_attributes]) if data.key? :uc_md_3
        root << build_element('UcD_3', data[:uc_d_3], data[:uc_d_3_attributes]) if data.key? :uc_d_3
        root << build_element('UcMD_4', data[:uc_md_4], data[:uc_md_4_attributes]) if data.key? :uc_md_4
        root << build_element('UcD_4', data[:uc_d_4], data[:uc_d_4_attributes]) if data.key? :uc_d_4
        root << build_element('UcMD_5', data[:uc_md_5], data[:uc_md_5_attributes]) if data.key? :uc_md_5
        root << build_element('UcD_5', data[:uc_d_5], data[:uc_d_5_attributes]) if data.key? :uc_d_5
        root << build_element('UcMD_6', data[:uc_md_6], data[:uc_md_6_attributes]) if data.key? :uc_md_6
        root << build_element('UcD_6', data[:uc_d_6], data[:uc_d_6_attributes]) if data.key? :uc_d_6

        root
      end
    end
  end
end