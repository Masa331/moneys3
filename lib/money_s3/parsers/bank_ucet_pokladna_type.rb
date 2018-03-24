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
        hash = {}

        hash[:zkrat] = zkrat if raw.key? :Zkrat
        hash[:popis] = popis if raw.key? :Popis
        hash[:uc_pokl] = uc_pokl if raw.key? :UcPokl
        hash[:poc_stav] = poc_stav if raw.key? :PocStav
        hash[:mena] = mena if raw.key? :Mena
        hash[:b_mena] = b_mena if raw.key? :BMena
        hash[:ps_kurz] = ps_kurz if raw.key? :PSKurz
        hash[:ps_mnozstvi] = ps_mnozstvi if raw.key? :PSMnozstvi
        hash[:prim_ucet] = prim_ucet if raw.key? :PrimUcet
        hash[:ucet] = ucet if raw.key? :Ucet
        hash[:b_kod] = b_kod if raw.key? :BKod
        hash[:b_nazev] = b_nazev if raw.key? :BNazev
        hash[:b_zkrat] = b_zkrat if raw.key? :BZkrat
        hash[:iban] = iban if raw.key? :IBAN
        hash[:swift] = swift if raw.key? :SWIFT
        hash[:uver] = uver if raw.key? :Uver
        hash[:hbid] = hbid if raw.key? :HBID
        hash[:hb_nazev] = hb_nazev if raw.key? :HBNazev
        hash[:druh] = druh if raw.key? :Druh
        hash[:typ_prijem] = typ_prijem if raw.key? :TypPrijem
        hash[:typ_vydej] = typ_vydej if raw.key? :TypVydej
        hash[:pokladni] = pokladni if raw.key? :Pokladni
        hash[:pozn] = pozn if raw.key? :Pozn

        hash
      end
    end
  end
end