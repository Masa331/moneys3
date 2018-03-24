require 'money_s3/builders/base_builder'

module MoneyS3
  module Builders
    class UcOsnovaType
      include BaseBuilder

      def builder
        root = Ox::Element.new(element_name)

        if attributes.key? :ucet
          element = Ox::Element.new('Ucet')
          element << attributes[:ucet] if attributes[:ucet]
          root << element
        end

        if attributes.key? :nazev
          element = Ox::Element.new('Nazev')
          element << attributes[:nazev] if attributes[:nazev]
          root << element
        end

        if attributes.key? :typ
          element = Ox::Element.new('Typ')
          element << attributes[:typ] if attributes[:typ]
          root << element
        end

        if attributes.key? :saldo
          element = Ox::Element.new('Saldo')
          element << attributes[:saldo] if attributes[:saldo]
          root << element
        end

        if attributes.key? :radek
          element = Ox::Element.new('Radek')
          element << attributes[:radek] if attributes[:radek]
          root << element
        end

        if attributes.key? :uc_prev
          element = Ox::Element.new('UcPrev')
          element << attributes[:uc_prev] if attributes[:uc_prev]
          root << element
        end

        if attributes.key? :pozn
          element = Ox::Element.new('Pozn')
          element << attributes[:pozn] if attributes[:pozn]
          root << element
        end

        if attributes.key? :radek_zkr
          element = Ox::Element.new('RadekZkr')
          element << attributes[:radek_zkr] if attributes[:radek_zkr]
          root << element
        end

        if attributes.key? :druh_uctu
          element = Ox::Element.new('DruhUctu')
          element << attributes[:druh_uctu] if attributes[:druh_uctu]
          root << element
        end

        if attributes.key? :ucet_typ
          element = Ox::Element.new('UcetTyp')
          element << attributes[:ucet_typ] if attributes[:ucet_typ]
          root << element
        end

        if attributes.key? :ucet_pod_typ
          element = Ox::Element.new('UcetPodTyp')
          element << attributes[:ucet_pod_typ] if attributes[:ucet_pod_typ]
          root << element
        end

        if attributes.key? :vnitro
          element = Ox::Element.new('Vnitro')
          element << attributes[:vnitro] if attributes[:vnitro]
          root << element
        end

        if attributes.key? :technicky
          element = Ox::Element.new('Technicky')
          element << attributes[:technicky] if attributes[:technicky]
          root << element
        end

        if attributes.key? :opravky
          element = Ox::Element.new('Opravky')
          element << attributes[:opravky] if attributes[:opravky]
          root << element
        end

        if attributes.key? :druh_cin
          element = Ox::Element.new('DruhCin')
          element << attributes[:druh_cin] if attributes[:druh_cin]
          root << element
        end

        root
      end
    end
  end
end