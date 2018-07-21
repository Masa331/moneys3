module MoneyS3
  module Parsers
    class BankUcetPokladnaType
      include ParserCore::BaseParser

      def zkrat
        at 'Zkrat'
      end

      def zkrat_attributes
        attributes_at 'Zkrat'
      end

      def popis
        at 'Popis'
      end

      def popis_attributes
        attributes_at 'Popis'
      end

      def uc_pokl
        at 'UcPokl'
      end

      def uc_pokl_attributes
        attributes_at 'UcPokl'
      end

      def poc_stav
        at 'PocStav'
      end

      def poc_stav_attributes
        attributes_at 'PocStav'
      end

      def mena
        at 'Mena'
      end

      def mena_attributes
        attributes_at 'Mena'
      end

      def b_mena
        at 'BMena'
      end

      def b_mena_attributes
        attributes_at 'BMena'
      end

      def ps_kurz
        at 'PSKurz'
      end

      def ps_kurz_attributes
        attributes_at 'PSKurz'
      end

      def ps_mnozstvi
        at 'PSMnozstvi'
      end

      def ps_mnozstvi_attributes
        attributes_at 'PSMnozstvi'
      end

      def prim_ucet
        at 'PrimUcet'
      end

      def prim_ucet_attributes
        attributes_at 'PrimUcet'
      end

      def ucet
        at 'Ucet'
      end

      def ucet_attributes
        attributes_at 'Ucet'
      end

      def b_kod
        at 'BKod'
      end

      def b_kod_attributes
        attributes_at 'BKod'
      end

      def b_nazev
        at 'BNazev'
      end

      def b_nazev_attributes
        attributes_at 'BNazev'
      end

      def b_zkrat
        at 'BZkrat'
      end

      def b_zkrat_attributes
        attributes_at 'BZkrat'
      end

      def iban
        at 'IBAN'
      end

      def iban_attributes
        attributes_at 'IBAN'
      end

      def swift
        at 'SWIFT'
      end

      def swift_attributes
        attributes_at 'SWIFT'
      end

      def uver
        at 'Uver'
      end

      def uver_attributes
        attributes_at 'Uver'
      end

      def hbid
        at 'HBID'
      end

      def hbid_attributes
        attributes_at 'HBID'
      end

      def hb_nazev
        at 'HBNazev'
      end

      def hb_nazev_attributes
        attributes_at 'HBNazev'
      end

      def druh
        at 'Druh'
      end

      def druh_attributes
        attributes_at 'Druh'
      end

      def typ_prijem
        at 'TypPrijem'
      end

      def typ_prijem_attributes
        attributes_at 'TypPrijem'
      end

      def typ_vydej
        at 'TypVydej'
      end

      def typ_vydej_attributes
        attributes_at 'TypVydej'
      end

      def pokladni
        at 'Pokladni'
      end

      def pokladni_attributes
        attributes_at 'Pokladni'
      end

      def pozn
        at 'Pozn'
      end

      def pozn_attributes
        attributes_at 'Pozn'
      end

      def to_h
        hash = {}
        hash[:attributes] = attributes

        hash[:zkrat] = zkrat if has? 'Zkrat'
        hash[:zkrat_attributes] = zkrat_attributes if has? 'Zkrat'
        hash[:popis] = popis if has? 'Popis'
        hash[:popis_attributes] = popis_attributes if has? 'Popis'
        hash[:uc_pokl] = uc_pokl if has? 'UcPokl'
        hash[:uc_pokl_attributes] = uc_pokl_attributes if has? 'UcPokl'
        hash[:poc_stav] = poc_stav if has? 'PocStav'
        hash[:poc_stav_attributes] = poc_stav_attributes if has? 'PocStav'
        hash[:mena] = mena if has? 'Mena'
        hash[:mena_attributes] = mena_attributes if has? 'Mena'
        hash[:b_mena] = b_mena if has? 'BMena'
        hash[:b_mena_attributes] = b_mena_attributes if has? 'BMena'
        hash[:ps_kurz] = ps_kurz if has? 'PSKurz'
        hash[:ps_kurz_attributes] = ps_kurz_attributes if has? 'PSKurz'
        hash[:ps_mnozstvi] = ps_mnozstvi if has? 'PSMnozstvi'
        hash[:ps_mnozstvi_attributes] = ps_mnozstvi_attributes if has? 'PSMnozstvi'
        hash[:prim_ucet] = prim_ucet if has? 'PrimUcet'
        hash[:prim_ucet_attributes] = prim_ucet_attributes if has? 'PrimUcet'
        hash[:ucet] = ucet if has? 'Ucet'
        hash[:ucet_attributes] = ucet_attributes if has? 'Ucet'
        hash[:b_kod] = b_kod if has? 'BKod'
        hash[:b_kod_attributes] = b_kod_attributes if has? 'BKod'
        hash[:b_nazev] = b_nazev if has? 'BNazev'
        hash[:b_nazev_attributes] = b_nazev_attributes if has? 'BNazev'
        hash[:b_zkrat] = b_zkrat if has? 'BZkrat'
        hash[:b_zkrat_attributes] = b_zkrat_attributes if has? 'BZkrat'
        hash[:iban] = iban if has? 'IBAN'
        hash[:iban_attributes] = iban_attributes if has? 'IBAN'
        hash[:swift] = swift if has? 'SWIFT'
        hash[:swift_attributes] = swift_attributes if has? 'SWIFT'
        hash[:uver] = uver if has? 'Uver'
        hash[:uver_attributes] = uver_attributes if has? 'Uver'
        hash[:hbid] = hbid if has? 'HBID'
        hash[:hbid_attributes] = hbid_attributes if has? 'HBID'
        hash[:hb_nazev] = hb_nazev if has? 'HBNazev'
        hash[:hb_nazev_attributes] = hb_nazev_attributes if has? 'HBNazev'
        hash[:druh] = druh if has? 'Druh'
        hash[:druh_attributes] = druh_attributes if has? 'Druh'
        hash[:typ_prijem] = typ_prijem if has? 'TypPrijem'
        hash[:typ_prijem_attributes] = typ_prijem_attributes if has? 'TypPrijem'
        hash[:typ_vydej] = typ_vydej if has? 'TypVydej'
        hash[:typ_vydej_attributes] = typ_vydej_attributes if has? 'TypVydej'
        hash[:pokladni] = pokladni if has? 'Pokladni'
        hash[:pokladni_attributes] = pokladni_attributes if has? 'Pokladni'
        hash[:pozn] = pozn if has? 'Pozn'
        hash[:pozn_attributes] = pozn_attributes if has? 'Pozn'

        hash
      end
    end
  end
end