require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class BankUcetPokladnaType
      include BaseParser

      def zkrat
        at :Zkrat
      end

      def popis
        at :Popis
      end

      def uc_pokl
        at :UcPokl
      end

      def poc_stav
        at :PocStav
      end

      def mena
        at :Mena
      end

      def b_mena
        at :BMena
      end

      def ps_kurz
        at :PSKurz
      end

      def ps_mnozstvi
        at :PSMnozstvi
      end

      def prim_ucet
        at :PrimUcet
      end

      def ucet
        at :Ucet
      end

      def b_kod
        at :BKod
      end

      def b_nazev
        at :BNazev
      end

      def b_zkrat
        at :BZkrat
      end

      def iban
        at :IBAN
      end

      def swift
        at :SWIFT
      end

      def uver
        at :Uver
      end

      def hbid
        at :HBID
      end

      def hb_nazev
        at :HBNazev
      end

      def druh
        at :Druh
      end

      def typ_prijem
        at :TypPrijem
      end

      def typ_vydej
        at :TypVydej
      end

      def pokladni
        at :Pokladni
      end

      def pozn
        at :Pozn
      end

      def to_h
        { zkrat: zkrat,
          popis: popis,
          uc_pokl: uc_pokl,
          poc_stav: poc_stav,
          mena: mena,
          b_mena: b_mena,
          ps_kurz: ps_kurz,
          ps_mnozstvi: ps_mnozstvi,
          prim_ucet: prim_ucet,
          ucet: ucet,
          b_kod: b_kod,
          b_nazev: b_nazev,
          b_zkrat: b_zkrat,
          iban: iban,
          swift: swift,
          uver: uver,
          hbid: hbid,
          hb_nazev: hb_nazev,
          druh: druh,
          typ_prijem: typ_prijem,
          typ_vydej: typ_vydej,
          pokladni: pokladni,
          pozn: pozn
        }.delete_if { |k, v| v.nil? || v.empty? }
      end
    end
  end
end