require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class UcOsnovaType
      include BaseParser

      def ucet
        at :Ucet
      end

      def nazev
        at :Nazev
      end

      def typ
        at :Typ
      end

      def saldo
        at :Saldo
      end

      def radek
        at :Radek
      end

      def uc_prev
        at :UcPrev
      end

      def pozn
        at :Pozn
      end

      def radek_zkr
        at :RadekZkr
      end

      def druh_uctu
        at :DruhUctu
      end

      def ucet_typ
        at :UcetTyp
      end

      def ucet_pod_typ
        at :UcetPodTyp
      end

      def vnitro
        at :Vnitro
      end

      def technicky
        at :Technicky
      end

      def opravky
        at :Opravky
      end

      def druh_cin
        at :DruhCin
      end

      def to_h
        hash = {}

        hash[:ucet] = ucet if raw.key? :Ucet
        hash[:nazev] = nazev if raw.key? :Nazev
        hash[:typ] = typ if raw.key? :Typ
        hash[:saldo] = saldo if raw.key? :Saldo
        hash[:radek] = radek if raw.key? :Radek
        hash[:uc_prev] = uc_prev if raw.key? :UcPrev
        hash[:pozn] = pozn if raw.key? :Pozn
        hash[:radek_zkr] = radek_zkr if raw.key? :RadekZkr
        hash[:druh_uctu] = druh_uctu if raw.key? :DruhUctu
        hash[:ucet_typ] = ucet_typ if raw.key? :UcetTyp
        hash[:ucet_pod_typ] = ucet_pod_typ if raw.key? :UcetPodTyp
        hash[:vnitro] = vnitro if raw.key? :Vnitro
        hash[:technicky] = technicky if raw.key? :Technicky
        hash[:opravky] = opravky if raw.key? :Opravky
        hash[:druh_cin] = druh_cin if raw.key? :DruhCin

        hash
      end
    end
  end
end