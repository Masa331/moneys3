module MoneyS3
  module Builders
    class ZauctovaniDPHType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.key? :attributes
          data[:attributes].each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('SDUcMD', data[:sd_uc_md], data[:sd_uc_md_attributes]) if data.key? :sd_uc_md
        root << build_element('SDUcD', data[:sd_uc_d], data[:sd_uc_d_attributes]) if data.key? :sd_uc_d
        root << build_element('ZDUcMD', data[:zd_uc_md], data[:zd_uc_md_attributes]) if data.key? :zd_uc_md
        root << build_element('ZDUcD', data[:zd_uc_d], data[:zd_uc_d_attributes]) if data.key? :zd_uc_d
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        if data.key? :seznam_obdobi_dph
          element = Ox::Element.new('SeznamObdobiDPH')
          data[:seznam_obdobi_dph].each { |i| element << ObdobiDPH.new('ObdobiDPH', i).builder }
          root << element
        end

        root
      end
    end
  end
end