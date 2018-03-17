require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UcOsnovaType
      include BaseBuilder

      attr_accessor :ucet, :nazev, :typ, :saldo, :radek, :uc_prev, :pozn, :radek_zkr, :druh_uctu, :ucet_typ, :ucet_pod_typ, :vnitro, :technicky, :opravky, :druh_cin

      def builder
        root = Ox::Element.new(element_name)

        root << (Ox::Element.new('Ucet') << ucet) if ucet
        root << (Ox::Element.new('Nazev') << nazev) if nazev
        root << (Ox::Element.new('Typ') << typ) if typ
        root << (Ox::Element.new('Saldo') << saldo) if saldo
        root << (Ox::Element.new('Radek') << radek) if radek
        root << (Ox::Element.new('UcPrev') << uc_prev) if uc_prev
        root << (Ox::Element.new('Pozn') << pozn) if pozn
        root << (Ox::Element.new('RadekZkr') << radek_zkr) if radek_zkr
        root << (Ox::Element.new('DruhUctu') << druh_uctu) if druh_uctu
        root << (Ox::Element.new('UcetTyp') << ucet_typ) if ucet_typ
        root << (Ox::Element.new('UcetPodTyp') << ucet_pod_typ) if ucet_pod_typ
        root << (Ox::Element.new('Vnitro') << vnitro) if vnitro
        root << (Ox::Element.new('Technicky') << technicky) if technicky
        root << (Ox::Element.new('Opravky') << opravky) if opravky
        root << (Ox::Element.new('DruhCin') << druh_cin) if druh_cin

        root
      end
    end
  end
end