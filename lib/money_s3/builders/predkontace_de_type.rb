require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class PredkontaceDEType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Zkrat', data[:zkrat]) if data.key? :zkrat
        root << build_element('Popis', data[:popis]) if data.key? :popis
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('PohZak', data[:poh_zak]) if data.key? :poh_zak
        root << build_element('ZauctDPH', data[:zauct_dph]) if data.key? :zauct_dph
        root << build_element('Cleneni', data[:cleneni]) if data.key? :cleneni
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn

        root
      end
    end
  end
end