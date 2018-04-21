module MoneyS3
  module Builders
    class ObdobiDPH
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('DatumOd', data[:datum_od]) if data.key? :datum_od
        root << build_element('UcMD_1', data[:uc_md_1]) if data.key? :uc_md_1
        root << build_element('UcD_1', data[:uc_d_1]) if data.key? :uc_d_1
        root << build_element('UcMD_2', data[:uc_md_2]) if data.key? :uc_md_2
        root << build_element('UcD_2', data[:uc_d_2]) if data.key? :uc_d_2
        root << build_element('UcMD_3', data[:uc_md_3]) if data.key? :uc_md_3
        root << build_element('UcD_3', data[:uc_d_3]) if data.key? :uc_d_3
        root << build_element('UcMD_4', data[:uc_md_4]) if data.key? :uc_md_4
        root << build_element('UcD_4', data[:uc_d_4]) if data.key? :uc_d_4
        root << build_element('UcMD_5', data[:uc_md_5]) if data.key? :uc_md_5
        root << build_element('UcD_5', data[:uc_d_5]) if data.key? :uc_d_5
        root << build_element('UcMD_6', data[:uc_md_6]) if data.key? :uc_md_6
        root << build_element('UcD_6', data[:uc_d_6]) if data.key? :uc_d_6

        root
      end
    end
  end
end