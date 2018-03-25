require 'money_s3/builders/base_builder'
require 'money_s3/builders/obdobi_dph'

module MoneyS3
  module Builders
    class ZauctovaniDPHDetype
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('PohDSS', data[:poh_dss]) if data.key? :poh_dss
        root << build_element('PohDZS', data[:poh_dzs]) if data.key? :poh_dzs
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