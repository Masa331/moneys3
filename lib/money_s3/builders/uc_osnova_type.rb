module MoneyS3
  module Builders
    class UcOsnovaType
      include ParserCore::BaseBuilder

      def builder
        root = Ox::Element.new(name)
        root = add_attributes_and_namespaces(root)

        root << build_element('Ucet', data[:ucet], data[:ucet_attributes]) if data.key? :ucet
        root << build_element('Nazev', data[:nazev], data[:nazev_attributes]) if data.key? :nazev
        root << build_element('Typ', data[:typ], data[:typ_attributes]) if data.key? :typ
        root << build_element('Saldo', data[:saldo], data[:saldo_attributes]) if data.key? :saldo
        root << build_element('Radek', data[:radek], data[:radek_attributes]) if data.key? :radek
        root << build_element('UcPrev', data[:uc_prev], data[:uc_prev_attributes]) if data.key? :uc_prev
        root << build_element('Pozn', data[:pozn], data[:pozn_attributes]) if data.key? :pozn
        root << build_element('RadekZkr', data[:radek_zkr], data[:radek_zkr_attributes]) if data.key? :radek_zkr
        root << build_element('DruhUctu', data[:druh_uctu], data[:druh_uctu_attributes]) if data.key? :druh_uctu
        root << build_element('UcetTyp', data[:ucet_typ], data[:ucet_typ_attributes]) if data.key? :ucet_typ
        root << build_element('UcetPodTyp', data[:ucet_pod_typ], data[:ucet_pod_typ_attributes]) if data.key? :ucet_pod_typ
        root << build_element('Vnitro', data[:vnitro], data[:vnitro_attributes]) if data.key? :vnitro
        root << build_element('Technicky', data[:technicky], data[:technicky_attributes]) if data.key? :technicky
        root << build_element('Opravky', data[:opravky], data[:opravky_attributes]) if data.key? :opravky
        root << build_element('DruhCin', data[:druh_cin], data[:druh_cin_attributes]) if data.key? :druh_cin

        root
      end
    end
  end
end