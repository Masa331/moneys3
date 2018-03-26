require 'money_s3/parsers/base_parser'

module MoneyS3
  module Parsers
    class BankUcetPokladnaType
      include BaseParser

      def zkrat
        at 'Zkrat'
      end

      def popis
        at 'Popis'
      end

      def uc_pokl
        at 'UcPokl'
      end

      def poc_stav
        at 'PocStav'
      end

      def mena
        at 'Mena'
      end

      def b_mena
        at 'BMena'
      end

      def ps_kurz
        at 'PSKurz'
      end

      def ps_mnozstvi
        at 'PSMnozstvi'
      end

      def prim_ucet
        at 'PrimUcet'
      end

      def ucet
        at 'Ucet'
      end

      def b_kod
        at 'BKod'
      end

      def b_nazev
        at 'BNazev'
      end

      def b_zkrat
        at 'BZkrat'
      end

      def iban
        at 'IBAN'
      end

      def swift
        at 'SWIFT'
      end

      def uver
        at 'Uver'
      end

      def hbid
        at 'HBID'
      end

      def hb_nazev
        at 'HBNazev'
      end

      def druh
        at 'Druh'
      end

      def typ_prijem
        at 'TypPrijem'
      end

      def typ_vydej
        at 'TypVydej'
      end

      def pokladni
        at 'Pokladni'
      end

      def pozn
        at 'Pozn'
      end

      def to_h_with_attrs
        hash = HashWithAttributes.new({}, attributes)

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:popis] = popis if has? 'Popis'
        hash[:uc_pokl] = uc_pokl if has? 'UcPokl'
        hash[:poc_stav] = poc_stav if has? 'PocStav'
        hash[:mena] = mena if has? 'Mena'
        hash[:b_mena] = b_mena if has? 'BMena'
        hash[:ps_kurz] = ps_kurz if has? 'PSKurz'
        hash[:ps_mnozstvi] = ps_mnozstvi if has? 'PSMnozstvi'
        hash[:prim_ucet] = prim_ucet if has? 'PrimUcet'
        hash[:ucet] = ucet if has? 'Ucet'
        hash[:b_kod] = b_kod if has? 'BKod'
        hash[:b_nazev] = b_nazev if has? 'BNazev'
        hash[:b_zkrat] = b_zkrat if has? 'BZkrat'
        hash[:iban] = iban if has? 'IBAN'
        hash[:swift] = swift if has? 'SWIFT'
        hash[:uver] = uver if has? 'Uver'
        hash[:hbid] = hbid if has? 'HBID'
        hash[:hb_nazev] = hb_nazev if has? 'HBNazev'
        hash[:druh] = druh if has? 'Druh'
        hash[:typ_prijem] = typ_prijem if has? 'TypPrijem'
        hash[:typ_vydej] = typ_vydej if has? 'TypVydej'
        hash[:pokladni] = pokladni if has? 'Pokladni'
        hash[:pozn] = pozn if has? 'Pozn'

        hash
      end
    end
  end
end