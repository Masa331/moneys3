require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UcOsnovaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(name)
        if data.respond_to? :attributes
          data.attributes.each { |k, v| root[k] = v }
        end

        root << build_element('Ucet', data[:ucet]) if data.key? :ucet
        root << build_element('Nazev', data[:nazev]) if data.key? :nazev
        root << build_element('Typ', data[:typ]) if data.key? :typ
        root << build_element('Saldo', data[:saldo]) if data.key? :saldo
        root << build_element('Radek', data[:radek]) if data.key? :radek
        root << build_element('UcPrev', data[:uc_prev]) if data.key? :uc_prev
        root << build_element('Pozn', data[:pozn]) if data.key? :pozn
        root << build_element('RadekZkr', data[:radek_zkr]) if data.key? :radek_zkr
        root << build_element('DruhUctu', data[:druh_uctu]) if data.key? :druh_uctu
        root << build_element('UcetTyp', data[:ucet_typ]) if data.key? :ucet_typ
        root << build_element('UcetPodTyp', data[:ucet_pod_typ]) if data.key? :ucet_pod_typ
        root << build_element('Vnitro', data[:vnitro]) if data.key? :vnitro
        root << build_element('Technicky', data[:technicky]) if data.key? :technicky
        root << build_element('Opravky', data[:opravky]) if data.key? :opravky
        root << build_element('DruhCin', data[:druh_cin]) if data.key? :druh_cin

        root
      end
    end
  end
end