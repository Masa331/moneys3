require 'money_s3/builders/base_builder'
require 'money_s3/builders/dalsi_sazba'

module MoneyS3
  module Builders
    class SouhrnDPHType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zaklad0', data[:zaklad0]) if data.key? :zaklad0
        root << build_element('Zaklad5', data[:zaklad5]) if data.key? :zaklad5
        root << build_element('Zaklad22', data[:zaklad22]) if data.key? :zaklad22
        root << build_element('DPH5', data[:dph5]) if data.key? :dph5
        root << build_element('DPH22', data[:dph22]) if data.key? :dph22

        if data.key? :seznam_dalsi_sazby
          element = Ox::Element.new('SeznamDalsiSazby')
          data[:seznam_dalsi_sazby].each { |i| element << DalsiSazba.new('DalsiSazba', i).builder }
          root << element
        end

        root
      end
    end
  end
end