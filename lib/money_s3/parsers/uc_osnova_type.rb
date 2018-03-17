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
        { ucet: ucet,
          nazev: nazev,
          typ: typ,
          saldo: saldo,
          radek: radek,
          uc_prev: uc_prev,
          pozn: pozn,
          radek_zkr: radek_zkr,
          druh_uctu: druh_uctu,
          ucet_typ: ucet_typ,
          ucet_pod_typ: ucet_pod_typ,
          vnitro: vnitro,
          technicky: technicky,
          opravky: opravky,
          druh_cin: druh_cin
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end