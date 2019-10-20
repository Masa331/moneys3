module MoneyS3
  module Builders
    class ZauctovaniDPHDetype
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Zkrat', data[:zkrat], data[:zkrat_attributes]) if data.key? :zkrat
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Popis', data[:popis], data[:popis_attributes]) if data.key? :popis
        root << build_element('PohDSS', data[:poh_dss], data[:poh_dss_attributes]) if data.key? :poh_dss
        root << build_element('PohDZS', data[:poh_dzs], data[:poh_dzs_attributes]) if data.key? :poh_dzs
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        if data.key? :seznam_obdobi_dph
          element = Ox::Element.new('SeznamObdobiDPH')
          data[:seznam_obdobi_dph].each { |i| element << ObdobiDPH2.new('ObdobiDPH', i).builder }
          root << element
        end

        root
      end
    end
  end
end