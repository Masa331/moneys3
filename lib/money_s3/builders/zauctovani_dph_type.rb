module MoneyS3
  module Builders
    class ZauctovaniDPHType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('SDUcMD', data[:sd_uc_md]) if data.key? :sd_uc_md
        root << build_element('SDUcD', data[:sd_uc_d]) if data.key? :sd_uc_d
        root << build_element('ZDUcMD', data[:zd_uc_md]) if data.key? :zd_uc_md
        root << build_element('ZDUcD', data[:zd_uc_d]) if data.key? :zd_uc_d
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
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